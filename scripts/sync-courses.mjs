import { cp, mkdir, readFile, readdir, rm, writeFile } from "node:fs/promises";
import { homedir } from "node:os";
import { dirname, extname, join, relative, sep } from "node:path";
import { fileURLToPath } from "node:url";

const root = fileURLToPath(new URL("../", import.meta.url));
const vault = process.env.COURSE_VAULT_PATH || join(homedir(), "Documents", "Obsidian Vault");
const destination = join(root, "assets", "course-materials");
const template = await readFile(join(root, "templates", "courses.html"), "utf8");
const vaultFolders = await readdir(vault);

const courses = [
  { code: "CS 173", name: "Discrete Structures", slug: "cs-173", excludeFolders: ["Midterm2 Practice/src"] },
  { code: "ECE 110", name: "Introduction to Electronics", slug: "ece-110", folder: "ECE 110 Intro to Electronics" },
  { code: "MATH 241", name: "Calculus III", slug: "math-241", folder: vaultFolders.includes("MATH 241 Calculus III") ? "MATH 241 Calculus III" : "MATH 241" },
  { code: "MATH 257", name: "Linear Algebra", slug: "math-257" },
  { code: "MATH 441", name: "Differential Equations", slug: "math-441" },
  { code: "C++", name: "Programming reference", slug: "cpp", folder: "C++" },
  { code: "MIT 18.100A", name: "Real Analysis", slug: "mit-18-100a" },
];

const escapeHtml = (value) => String(value).replace(/[&<>"']/g, (character) => ({
  "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;",
})[character]);
const encodePath = (parts) => parts.map(encodeURIComponent).join("/");
const naturalSort = (a, b) => a.localeCompare(b, undefined, { numeric: true, sensitivity: "base" });
const typeLabel = (name) => ({
  ".pdf": "PDF", ".md": "Note", ".png": "Image", ".jpg": "Image", ".jpeg": "Image", ".svg": "Image",
  ".typ": "Typst",
})[extname(name).toLowerCase()] || "File";
const fileCount = (count) => `${count} ${count === 1 ? "file" : "files"}`;

function categoryFor(parts) {
  const folder = parts.slice(0, -1);
  if (folder[0] === "TYPST") return "Typst lecture sources";
  if (folder.length) return folder.map((part) => part === "attachments" ? "Images & attachments" : part === "Quizes" ? "Quizzes" : part).join(" / ");
  const extension = extname(parts.at(-1)).toLowerCase();
  if (extension === ".md") return "Notes";
  if ([".png", ".jpg", ".jpeg", ".svg"].includes(extension)) return "Images";
  return "Reference files";
}

async function collect(course) {
  const source = join(vault, course.folder || `${course.code} ${course.name}`);
  const files = [];
  let excluded = 0;
  async function visit(directory) {
    const entries = await readdir(directory, { withFileTypes: true });
    // Embedded repositories can contain unrelated files, such as the CS 173 dotfiles submodule.
    if (directory !== source && entries.some((entry) => entry.name === ".git")) return;
    for (const entry of entries) {
      if (entry.name.startsWith(".") || entry.isSymbolicLink()) continue;
      const path = join(directory, entry.name);
      const parts = relative(source, path).split(sep);
      if (entry.isDirectory()) {
        if (!course.excludeFolders?.includes(parts.join("/"))) await visit(path);
      } else if (entry.isFile()) {
        if (/^\(written\)/i.test(entry.name)) { excluded++; continue; }
        const label = entry.name.slice(0, entry.name.length - extname(entry.name).length);
        files.push({ source: path, parts, name: entry.name, label, category: categoryFor(parts) });
      }
    }
  }
  await visit(source);
  files.sort((a, b) => naturalSort(a.category, b.category) || naturalSort(a.label, b.label) || naturalSort(a.name, b.name));
  return { ...course, files, excluded };
}

const archive = [];
for (const course of courses) archive.push(await collect(course));
await rm(destination, { recursive: true, force: true });
await mkdir(destination, { recursive: true });
for (const course of archive) {
  for (const file of course.files) {
    const target = join(destination, course.slug, ...file.parts);
    await mkdir(dirname(target), { recursive: true });
    await cp(file.source, target);
  }
}

const options = archive.map((course) => `<option value="${course.slug}">${escapeHtml(`${course.code} · ${course.name}`)}</option>`).join("\n                ");
const content = archive.map((course) => {
  const groups = new Map();
  for (const file of course.files) {
    if (!groups.has(file.category)) groups.set(file.category, []);
    groups.get(file.category).push(file);
  }
  const categories = [...groups].map(([category, files]) => {
    const links = files.map((file) => {
      const href = `./assets/course-materials/${course.slug}/${encodePath(file.parts)}`;
      const type = typeLabel(file.name);
      const search = `${course.code} ${course.code.replaceAll(" ", "")} ${course.name} ${category} ${file.name} ${type}`.toLowerCase();
      return `<li class="material-row" data-search="${escapeHtml(search)}"><a href="${href}" target="_blank" rel="noopener"><span class="material-name">${escapeHtml(file.label)}</span><span class="material-type">${type}</span></a></li>`;
    }).join("\n                    ");
    return `<details class="category-block">
                  <summary class="category-summary">
                    <span>${escapeHtml(category)}</span>
                    <span class="archive-files">${fileCount(files.length)}</span>
                    <span class="archive-caret" aria-hidden="true"></span>
                  </summary>
                  <ul class="material-list">
                    ${links}
                  </ul>
                </details>`;
  }).join("\n                ");
  return `<details id="course-${course.slug}" class="course-block" data-course="${course.slug}">
              <summary class="course-summary">
                <span class="course-label"><span class="course-code">${escapeHtml(course.code)}</span><span class="course-title">${escapeHtml(course.name)}</span></span>
                <span class="archive-files">${fileCount(course.files.length)}</span>
                <span class="archive-caret" aria-hidden="true"></span>
              </summary>
              <div class="course-categories">
                ${categories}
              </div>
            </details>`;
}).join("\n            ");

const total = archive.reduce((sum, course) => sum + course.files.length, 0);
const page = template
  .replace("<!-- COURSE_COUNT -->", String(archive.length))
  .replace("<!-- FILE_COUNT -->", String(total))
  .replace("<!-- COURSE_OPTIONS -->", options)
  .replace("<!-- COURSE_CONTENT -->", content);
await writeFile(join(root, "courses.html"), page);
console.log(`Synced ${total} files across ${archive.length} courses; excluded ${archive.reduce((sum, course) => sum + course.excluded, 0)} (written) files.`);

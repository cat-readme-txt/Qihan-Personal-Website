import { cp, mkdir, readFile, readdir, rm, writeFile } from "node:fs/promises";
import { homedir } from "node:os";
import { dirname, extname, join, relative } from "node:path";
import { fileURLToPath } from "node:url";

const root = fileURLToPath(new URL("../", import.meta.url));
const vault = process.env.COURSE_VAULT_PATH || join(homedir(), "Documents", "Obsidian Vault");
const destination = join(root, "assets", "course-materials");
const template = await readFile(join(root, "templates", "courses.html"), "utf8");

const courses = [
  { name: "CS 173 Discrete Structures", slug: "cs-173" },
  { name: "ECE 110 Intro to Electronics", slug: "ece-110" },
  { name: "MATH 241", slug: "math-241" },
  { name: "MATH 257 Linear Algebra", slug: "math-257" },
  { name: "MATH 441 Differential Equations", slug: "math-441" },
  { name: "C++", slug: "cpp" },
  { name: "MIT 18.100A Real Analysis", slug: "mit-18-100a" },
];

const escapeHtml = (value) => String(value).replace(/[&<>"']/g, (character) => ({
  "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;",
})[character]);
const encodePath = (parts) => parts.map(encodeURIComponent).join("/");
const naturalSort = (a, b) => a.localeCompare(b, undefined, { numeric: true, sensitivity: "base" });
const typeLabel = (name) => ({
  ".pdf": "PDF", ".md": "Note", ".png": "Image", ".jpg": "Image", ".jpeg": "Image", ".svg": "Image",
})[extname(name).toLowerCase()] || "File";

function categoryFor(parts) {
  const folder = parts.slice(0, -1);
  if (folder.length) return folder.map((part) => part === "attachments" ? "Images & attachments" : part === "Quizes" ? "Quizzes" : part).join(" / ");
  const extension = extname(parts.at(-1)).toLowerCase();
  if (extension === ".md") return "Notes";
  if ([".png", ".jpg", ".jpeg", ".svg"].includes(extension)) return "Images";
  return "Reference files";
}

async function collect(course) {
  const source = join(vault, course.name);
  const files = [];
  let excluded = 0;
  async function visit(directory) {
    const entries = await readdir(directory, { withFileTypes: true });
    for (const entry of entries) {
      if (entry.name.startsWith(".") || entry.isSymbolicLink()) continue;
      const path = join(directory, entry.name);
      if (entry.isDirectory()) await visit(path);
      else if (entry.isFile()) {
        if (/^\(written\)/i.test(entry.name)) { excluded++; continue; }
        const parts = relative(source, path).split("/");
        files.push({ source: path, parts, name: entry.name, category: categoryFor(parts) });
      }
    }
  }
  await visit(source);
  files.sort((a, b) => naturalSort(a.category, b.category) || naturalSort(a.name, b.name));
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

const index = archive.map((course) => `<a href="#course-${course.slug}" data-course-jump="${course.slug}">${escapeHtml(course.name)} <span>${course.files.length}</span></a>`).join("\n          ");
const options = archive.map((course) => `<option value="${course.slug}">${escapeHtml(course.name)}</option>`).join("\n              ");
const content = archive.map((course) => {
  const groups = new Map();
  for (const file of course.files) {
    if (!groups.has(file.category)) groups.set(file.category, []);
    groups.get(file.category).push(file);
  }
  const categories = [...groups].map(([category, files]) => `<section class="category-block" aria-label="${escapeHtml(category)}">
              <div class="category-heading"><h3>${escapeHtml(category)}</h3><span>${files.length} ${files.length === 1 ? "file" : "files"}</span></div>
              <ul class="material-list">
                ${files.map((file) => {
    const href = `./assets/course-materials/${course.slug}/${encodePath(file.parts)}`;
    const search = `${course.name} ${category} ${file.name}`.toLowerCase();
    return `<li class="material-row" data-search="${escapeHtml(search)}"><a href="${href}" target="_blank" rel="noopener"><span class="material-name">${escapeHtml(file.name)}</span><span class="material-meta"><span class="material-type">${typeLabel(file.name)}</span><span aria-hidden="true">↗</span></span></a></li>`;
  }).join("\n                ")}
              </ul>
            </section>`).join("\n            ");
  return `<section id="course-${course.slug}" class="course-block" data-course="${course.slug}" aria-labelledby="heading-${course.slug}">
          <div class="course-heading"><div><p class="eyebrow">Course archive</p><h2 id="heading-${course.slug}">${escapeHtml(course.name)}</h2></div><span>${course.files.length} ${course.files.length === 1 ? "file" : "files"}</span></div>
          ${categories}
        </section>`;
}).join("\n        ");

const total = archive.reduce((sum, course) => sum + course.files.length, 0);
const page = template
  .replace("<!-- COURSE_COUNT -->", String(archive.length))
  .replaceAll("<!-- FILE_COUNT -->", String(total))
  .replace("<!-- COURSE_OPTIONS -->", options)
  .replace("<!-- COURSE_INDEX -->", index)
  .replace("<!-- COURSE_CONTENT -->", content);
await writeFile(join(root, "courses.html"), page);
console.log(`Synced ${total} files across ${archive.length} courses; excluded ${archive.reduce((sum, course) => sum + course.excluded, 0)} (written) files.`);

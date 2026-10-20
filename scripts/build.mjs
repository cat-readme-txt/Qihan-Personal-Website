import { cp, mkdir, rm, writeFile } from "node:fs/promises";
import { fileURLToPath } from "node:url";
import { join } from "node:path";

const root = fileURLToPath(new URL("../", import.meta.url));
const output = join(root, "dist");
const sourceMovie = join(root, "assets", "chronodox-demo.mov");
const publicFiles = [
  "index.html",
  "education.html",
  "research.html",
  "experience.html",
  "leadership.html",
  "interests.html",
  "projects.html",
  "void-navigator.html",
  "ongoing.html",
  "courses.html",
  "styles.css",
  "courses.css",
  "script.js",
  "courses.js",
  "assets",
];

await rm(output, { recursive: true, force: true });
await mkdir(output, { recursive: true });

for (const file of publicFiles) {
  await cp(join(root, file), join(output, file), {
    recursive: true,
    filter: (source) => source !== sourceMovie,
  });
}

await writeFile(join(output, ".nojekyll"), "");
console.log("Built static website in dist/.");

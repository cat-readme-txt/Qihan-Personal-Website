import { cp, mkdir, rm, writeFile } from "node:fs/promises";
import { fileURLToPath } from "node:url";
import { join } from "node:path";

const root = fileURLToPath(new URL("../", import.meta.url));
const output = join(root, "dist");
const publicFiles = ["index.html", "styles.css", "script.js", "assets"];

await rm(output, { recursive: true, force: true });
await mkdir(output, { recursive: true });

for (const file of publicFiles) {
  await cp(join(root, file), join(output, file), { recursive: true });
}

await writeFile(join(output, ".nojekyll"), "");
console.log("Built static website in dist/.");

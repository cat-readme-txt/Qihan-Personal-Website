# Blake / Qihan Wang

A static personal website with separate pages for Home, Education, Research, Experience, Leadership, Skills & Interests, Projects, Ongoing, and Courses. Each page has the same top navigation. Built with HTML, CSS, and JavaScript, with no runtime dependencies.

## Preview locally

Use Node.js 22 or later and Python 3. No dependency installation is needed.

```sh
npm run build
npm run preview
```

Open [localhost:4173](http://localhost:4173). Rebuild after editing to update the preview.

## Edit the site

- `index.html`: Home page.
- `education.html`, `research.html`, `experience.html`, `leadership.html`, `interests.html`, `projects.html`, and `ongoing.html`: portfolio pages.
- `courses.html`: generated course archive page with the planned course schedule.
- `templates/courses.html` and `scripts/sync-courses.mjs`: archive template and sync script. Edit the schedule in the template as well as the current page; keep its top navigation in step with the portfolio pages before regenerating `courses.html`.
- `courses.css` and `courses.js`: archive layout and filters.
- `styles.css`: layout, colors, and responsive styling.
- `script.js`: mobile navigation and redirects for old section links.
- `assets/`: public images, the browser-ready Chronodox demo and poster, and `qihan-wang-resume.pdf`.
- `scripts/build.mjs`: copies the public files into `dist/` and adds `.nojekyll`.

Everything in `assets/` is published, including the course files under `assets/course-materials/`. Keep other private files outside that folder. Relative asset links let the site work at either a GitHub Pages account domain or a repository subpath.

### Refresh the course archive

Run `npm run sync:courses` to copy the seven course folders from `~/Documents/Obsidian Vault` into `assets/course-materials/` and regenerate `courses.html`. Set `COURSE_VAULT_PATH` to use a different vault location. The script skips hidden files, symbolic links, and files whose names begin with `(written)` (case-insensitive). It copies the course folders only; the archive page links to the full Obsidian Vault repository for later updates and other collections such as textbooks. Run `npm run build` after syncing.

## Deploy to GitHub Pages

Repository: [cat-readme-txt/Qihan-Personal-Website](https://github.com/cat-readme-txt/Qihan-Personal-Website). Published site: [cat-readme-txt.github.io/Qihan-Personal-Website/](https://cat-readme-txt.github.io/Qihan-Personal-Website/).

1. Push these source files to its `main` branch.
2. Open the repository's **Settings → Pages** and select **GitHub Actions** as the source.
3. Run **Deploy website to GitHub Pages** in the Actions tab, or push a new commit to `main`.
4. Open the published URL shown by the deployment.

The workflow builds and publishes only `dist/`. Future pushes to `main` deploy automatically. All local asset links are relative to support the `/Qihan-Personal-Website/` repository subpath.

See [GitHub's custom Pages workflow documentation](https://docs.github.com/en/pages/getting-started-with-github-pages/using-custom-workflows-with-github-pages) for the hosting setup.

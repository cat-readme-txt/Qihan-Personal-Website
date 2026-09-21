# Blake / Qihan Wang

A static personal website with Home, Research, Projects, Technical Interests, and Experience sections. Built with HTML, CSS, and JavaScript, with no runtime dependencies.

## Preview locally

Use Node.js 22 or later and Python 3. No dependency installation is needed.

```sh
npm run build
npm run preview
```

Open [localhost:4173](http://localhost:4173). Rebuild after editing to update the preview.

## Edit the site

- `index.html`: content, navigation, and links.
- `styles.css`: layout, colors, and responsive styling.
- `script.js`: progressive enhancements.
- `assets/`: public images and `qihan-wang-resume.pdf`.
- `scripts/build.mjs`: copies the public files into `dist/` and adds `.nojekyll`.

Everything in `assets/` is published. Keep source documents and private research data outside that folder. Relative asset links let the site work at either a GitHub Pages account domain or a repository subpath.

## Deploy to GitHub Pages

Repository: [cat-readme-txt/Personal-Website](https://github.com/cat-readme-txt/Personal-Website). Published site: [cat-readme-txt.github.io/Personal-Website/](https://cat-readme-txt.github.io/Personal-Website/).

1. Push these source files to its `main` branch.
2. Open the repository's **Settings → Pages** and select **GitHub Actions** as the source.
3. Run **Deploy website to GitHub Pages** in the Actions tab, or push a new commit to `main`.
4. Open the published URL shown by the deployment.

The workflow builds and publishes only `dist/`. Future pushes to `main` deploy automatically. All local asset links are relative to support the `/Personal-Website/` repository subpath.

See [GitHub's custom Pages workflow documentation](https://docs.github.com/en/pages/getting-started-with-github-pages/using-custom-workflows-with-github-pages) for the hosting setup.

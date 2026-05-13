# HugoBlox Local Tutorial

This project is a local HugoBlox Academic CV starter adapted to a simpler academic profile layout like:

- [alvaroyan.github.io](https://alvaroyan.github.io/)

## 1. What this site already includes

- A homepage with a profile section, an "About Me" section, and a "Recent Publications" section.
- A top menu with `Bio`, `About`, `Publications`, and `CV`.
- Placeholder publication entries that you can replace with your own papers.
- A sample CV file at `static/uploads/resume.pdf`.

## 2. Install the required tools on Windows

HugoBlox's official local install guide says you need:

- Node.js 18 or higher
- Git
- Go
- Hugo Extended

The official Windows install command is:

```powershell
winget install OpenJS.NodeJS.LTS Git.Git GoLang.Go Hugo.Hugo.Extended
```

After installing, close and reopen PowerShell.

## 3. Start the site locally

From this folder:

```powershell
cd C:\Users\zoe\Documents\Playground\hugoblox-site
npm install
.\scripts\start-local.ps1
```

Open:

```text
http://localhost:1313/
```

If Hugo downloads modules on first run, let it finish and refresh the page.

This project also includes a small local override at `layouts/_partials/css.html`
plus the helper scripts in `scripts/` so Windows can use the local Tailwind CLI
reliably.

## 4. Edit the parts that matter most

### Your personal profile

Edit:

```text
data/authors/me.yaml
```

This file controls:

- your name
- your role
- your short bio
- your affiliation
- your links
- your interests
- your education

### Your homepage sections

Edit:

```text
content/_index.md
```

This file controls:

- the order of homepage sections
- the "About Me" text
- the publication block on the homepage

### Your top navigation

Edit:

```text
config/_default/menus.yaml
```

This file controls the top menu items.

### Your site name and metadata

Edit:

```text
config/_default/params.yaml
config/_default/hugo.yaml
```

Use these files to update:

- the site name shown in the header and browser tab
- the site description
- the final deployment URL later

### Your publication list

Edit the sample entries in:

```text
content/publications/conference-paper/index.md
content/publications/journal-article/index.md
content/publications/preprint/index.md
```

To add more papers, duplicate one of those folders and update the front matter.

## 5. Replace the profile photo and CV

### Profile photo

Replace:

```text
assets/media/authors/me.png
```

Keep the same filename unless you also update the template configuration.

### CV PDF

Replace:

```text
static/uploads/resume.pdf
```

The `Download CV` button in the homepage already points there.

## 6. Recommended order for customizing this site

1. Replace `data/authors/me.yaml`.
2. Replace the text in `content/_index.md`.
3. Replace `assets/media/authors/me.png`.
4. Replace `static/uploads/resume.pdf`.
5. Replace the sample publication files.
6. Adjust `config/_default/menus.yaml` if you want extra pages later.

## 7. How this starter maps to the reference site

The reference page has a simple academic structure:

- profile photo and name
- current role and institution
- short "About Me" text
- interests
- education
- recent publications
- CV link

This starter matches that same structure using HugoBlox blocks:

- `resume-biography-3` for the top profile area
- `markdown` for the About section
- `collection` for Recent Publications

## 8. Common next steps

- Add a `Teaching` page.
- Add a `Projects` page.
- Add a `News` section later if you want blog-style updates.
- Deploy to GitHub Pages after setting the correct `baseURL` in `config/_default/hugo.yaml`.

## 9. Official references used for this setup

- Ownable / HugoBlox local install docs: [https://docs.ownable.dev/cli/](https://docs.ownable.dev/cli/)
- Reference site structure: [https://alvaroyan.github.io/](https://alvaroyan.github.io/)

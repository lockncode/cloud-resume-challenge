# Render Project: Markdown Emulation

Markdown rendering is needed for the project page. To ensure consistent and reliable results, markdown is rendered on the server side, since client-side rendering is considered complex and often produces inconsistent outputs.

The JSON data containing markdown is processed and converted into HTML by the `render_projects.py` script. This code will eventually be integrated into the serverless functions.

---

## Render Items with Frontmatter

Markdown is used by both projects and blog posts. To improve structure, markdown files with frontmatter are collected and converted into JSON objects. Each type of content is placed in its corresponding directory, for example:

- `/projects/:handle.markdown`
- `/blog/:handle.markdown`

---

## Task Runner with Invoke

The **Invoke** task runner is used to handle rendering jobs. The original `render_projects` task has been refactored into `render_items` so both projects and blog posts can be rendered.

**Available commands:**
```bash
invoke --list
invoke render-blog
invoke render-projects
```

---

## Pygments

To enable syntax highlighting in the markdown output, the required CSS file is generated using **Pygments**. The package is installed and the stylesheet is created with the following commands:

```bash
pip install Pygments
pygmentize -S monokai -f html -a .codehilite > pygments.css
```
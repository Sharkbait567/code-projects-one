# code-projects-one

Static host for interactive HTML charts generated in Claude chat sessions, published via GitHub Pages and embedded in Notion.

## Live site

https://sharkbait567.github.io/code-projects-one/

## Layout

```
charts/
  index.html              master index of all charts
  NAMING_CONVENTION.md     folder + URL + file-naming rules
  push_chart.sh            one-command intake: copy -> commit -> push
  stem-vault/              STEM Vault / Sharkatech / Gaia Tech charts
  <category>/              added per project area as needed
```

## Workflow

1. Chart is generated as an HTML artifact in a Claude chat session.
2. Claude Code drops the file into `charts/<category>/`, updates `charts/index.html`, commits, pushes.
3. The GitHub Pages URL goes back into the Notion spec page as an `/embed` block.

See [charts/NAMING_CONVENTION.md](charts/NAMING_CONVENTION.md) for details.

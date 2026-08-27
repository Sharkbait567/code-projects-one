# Chart Naming Convention — code-projects-one

## URL Pattern
https://sharkbait567.github.io/code-projects-one/charts/[category]/[chart-name].html

## Categories
- stem-vault/        → STEM Vault: VersaBlaster, Gaia Tech, gadget specs
- hc-policy/         → Horizon Coalition policy and doctrine charts
- versablaster/      → VersaBlaster-specific ammo and system charts
- nano-polyp/        → Nano-Polyp / Wonderbeast biological framework charts
- general/           → anything cross-project or uncategorized

## File Naming
[project-codename]_[chart-type]_chart.html
Examples:
  compound_o_chemistry_chart.html
  dirty_bubble_system_chart.html
  gastric_reactor_flow_chart.html

## Workflow
1. Chart is generated as HTML in Claude chat session
2. File is presented as a downloadable artifact
3. Claude Code picks up the file, places it in the correct category folder, commits, pushes
4. Claude chat session gets the URL back and drops it into the Notion spec page as an /embed block
5. The Notion page now has a live interactive chart embedded inline

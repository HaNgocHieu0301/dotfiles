# Markdown Usage

This document covers Markdown-specific shortcuts and features in this Neovim
configuration.

## Rendering

Markdown rendering is handled by `render-markdown.nvim` with Tree-sitter
support for `markdown` and `markdown_inline`.

- Open any `*.md` file to enable Markdown syntax and inline rendering.
- Press `<leader>mt` to toggle rendered Markdown in the current buffer.
- Press `<leader>mP` to open the rendered Markdown preview buffer.
- Run `:RenderMarkdown toggle` if you prefer commands over keymaps.
- Run `:RenderMarkdown disable` or `:RenderMarkdown enable` to control rendering
  explicitly.

Rendered headings, code blocks, lists, block quotes, tables, and checkboxes are
configured in `lua/plugins/spec/render-markdown.lua`.

## Browser Preview

Browser preview is handled by `markdown-preview.nvim`.

- Press `<leader>mp` to toggle the browser preview.
- Run `:MarkdownPreview` to start preview.
- Run `:MarkdownPreviewStop` to stop preview.
- Run `:MarkdownPreviewToggle` to toggle preview from command mode.

Use browser preview when you need a closer final layout check, especially for
long documents or tables.

## Formatting

Markdown formatting is handled by Conform with `markdownlint`.

- Press `<leader>fm` to format the current file.
- Run `:FormatFile` to format the current buffer.
- Run `:FormatProject` to format project files through the custom formatter
  helper.

If formatting fails, run `:MasonInstallAll` and confirm that `markdownlint` is
installed.

## Checkboxes

Use standard Markdown task syntax:

```markdown
- [ ] Todo item
- [x] Done item
- [-] In-progress item
```

`render-markdown.nvim` renders these states with custom icons while preserving
the source text.

## Troubleshooting

- Run `:Lazy sync` after plugin changes.
- Reopen Neovim after installing or updating Markdown plugins.
- Run `:checkhealth` if Tree-sitter highlighting or preview behavior looks
  broken.
- Run `:NvimTreeRefresh` if newly created Markdown files do not appear in the
  file tree.

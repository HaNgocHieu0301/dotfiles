# GEMINI Project Context: Neovim Configuration

## Overview

This repository contains a highly customized Neovim configuration, structured around **NvChad v2.5** and **Gale**. It's designed for **Arch Linux** and features a modular setup for development in multiple languages (Lua, Python, Rust, JS/TS, etc.) with rounded borders and modern UI enhancements.

## Project Structure

- `init.lua`: The main entry point for Neovim configuration.
- `lua/`: Contains all Lua modules.
  - `bootstrap.lua`: Bootstrapping logic for the configuration.
  - `chadrc.lua`: Main configuration file for NvChad settings.
  - `mappings.lua`: Central location for key mappings.
  - `options.lua`: General Neovim options (settings).
  - `plugins/`: Directory for plugin configurations.
    - `init.lua`: Entry point for plugin specifications.
    - `local/`: Local plugins/modules (e.g., `binary-peek`, `js-playground`).
    - `spec/`: Detailed plugin specifications categorized by purpose.
    - `override/`: Overrides for default plugin configs.
  - `themes/`: Custom theme definitions.
  - `gale/`: Custom utility modules.

## Installation

1. **Clone the repo**: `git clone <repo_url> ~/.config/nvim`
2. **Bootstrap**: Open `nvim` and let `lazy.nvim` install plugins.
3. **Mason**: Reopen `nvim` and run `:MasonInstallAll` to install LSPs, DAPs, and formatters.

### Dependencies

- **NVIM**: v0.11.5+
- **Font**: Any [NerdFont](https://www.nerdfonts.com/) (e.g., JetBrains Mono).
- **Python**: 3.14+
- **Node.js**: v25.2.1+

## Key Workflows & Keybindings

### Leader Key: `<Space>`

### 📂 File & Project Management

- **Oil.nvim**: `Ctrl + n` to toggle. Edit your filesystem like a normal buffer.
  - `-`: Go to parent directory.
  - `cdp`: Switch project in current window.
  - `tcdp`: Open project in a new tab.
- **Tabs**: `Alt + [1-9]` to switch tabs quickly.

### 🔍 Search & Navigation

- **Telescope**: `<leader>fw` for Live Grep. `Ctrl + h` / `F1` toggles preview.
- **Hop.nvim**:
  - `<leader><leader>w`: Hop to word.
  - `<leader><leader>c`: Hop to line.
- **Relative Number**: Displays distance from cursor for fast jumping (`12j`, `d5j`, `V10j`).
  - `<leader>rn`: Toggle relative numbers.
  - `<leader>n`: Toggle all line numbers.

### 📝 Editing & Manipulation

- **Folding**: `zz` toggles fold (redefined from `za`). `zR`/`zM` to open/close all.
- **Commenting**: `gcc` for line, `gc` for selection.
- **Outlines**: `<leader>oo` toggles symbols outline Sidebar.
- **LSP Hints**: Inlay hints appear at the end of the line (via `lsp-endhints`).

### 🚀 Terminal & Git

- **Terminals**:
  - `Alt + i`: Floating terminal (Best for Git).
  - `Alt + h` / `Alt + v`: Horizontal/Vertical splits.
  - `Ctrl + x`: Escape terminal mode.
- **Git**:
  - `:Neogit` (or `:ngit`): Full Git interface (`s` to stage, `cc` to commit, `Pp` to push).
  - `gitsigns`: Visual indicators in the gutter.
  - `LazyGit`: `:LazyGit` (if installed).

## Featured Plugins

### LSP & Code Intelligence

- **nvim-lspconfig**, **conform.nvim** (formatting), **mason.nvim** (package manager).
- **nvim-cmp**: Autocompletion.
- **Trouble.nvim**: Diagnostic lists.
- **Supermaven**: AI Code Completion.
- **Rustaceanvim**: Enhanced Rust support.

### UI & Visuals

- **Noice.nvim** & **nvim-notify**: Modern UI for messages and notifications.
- **Dropbar.nvim**: Breadcrumbs at the top.
- **Rainbow-delimiters**: Colored parentheses.

### Editing Tools

- **Oil.nvim**: Text-based file management.
- **Cloak.nvim**: Hides secrets in `.env`.
- **Harpoon**: Fast file switching.
- **Undotree**: Visual undo history.
- **Grug-far**: Advanced search and replace.

## AI Instructions

- **Modularity**: Edit specific files (`options.lua`, `mappings.lua`) instead of `init.lua`.
- **Conventions**: 2 spaces indentation, Lua language, NvChad style.
- **Testing**: Re-source or restart Nvim to apply changes.

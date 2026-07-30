# zero.nvim

<p align="left">
  <img src="https://img.shields.io/badge/Neovim-v0.10+-57AD31?style=for-the-badge&logo=neovim&logoColor=white" alt="Neovim Supported">
  <img src="https://img.shields.io/badge/Framework-LazyVim-2e3440?style=for-the-badge&logo=neovim&logoColor=white" alt="LazyVim Framework">
  <img src="https://img.shields.io/badge/Auto--Upgrades-Enabled-blue?style=for-the-badge" alt="Auto Upgrades">
  <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="License">
</p>

A personal Neovim configuration built on [LazyVim](https://github.com/LazyVim/LazyVim), with LSP support, formatting, linting, debugging, fuzzy finding, file navigation, and customized keybindings.

## Features

- **Plugin Management** — Uses LazyVim and `lazy.nvim` for plugin management and updates.
- **Search and Navigation** — File search, live grep, buffers, and diagnostics through Telescope and Snacks.
- **LSP and Formatting** — Language Server Protocol support through Mason and Neovim's LSP, with formatting through `conform.nvim` and configured linting tools.
- **Debugging** — Debug Adapter Protocol support through `nvim-dap` for breakpoints, stepping, and interactive debugging.
- **Diagnostics** — Workspace diagnostics, symbols, and quickfix functionality through `trouble.nvim`.
- **Interface** — Nord colorscheme with configured transparency, Lualine, Bufferline, and Snacks dashboard.
- **Keybindings** — Custom keybindings with interactive discovery through `which-key.nvim` and incremental renaming through `inc-rename.nvim`.
- **Git Integration** — Git signs and LazyGit integration through the configured Git plugins.

## Repository Structure

```text
zero.nvim/
├── init.lua
├── .stylua.toml
├── CHEATSHEET.md
├── README.md
├── .github/
│   └── workflows/
│       └── ci.yml
└── lua/
    ├── config/
    │   ├── autocmds.lua
    │   ├── keymaps.lua
    │   ├── lazy.lua
    │   └── options.lua
    └── plugins/
        ├── colorscheme.lua
        ├── git.lua
        ├── inc-rename.lua
        ├── neotree.lua
        ├── sleuth.lua
        ├── telescope.lua
        └── ui.lua
```

### Configuration Overview

| Directory / File           | Purpose                                               |
| :------------------------- | :---------------------------------------------------- |
| `init.lua`                 | Main configuration entry point                        |
| `lua/config/`              | Core Neovim configuration and LazyVim setup           |
| `lua/plugins/`             | Plugin specifications and custom plugin configuration |
| `CHEATSHEET.md`            | Keybinding and command reference                      |
| `.stylua.toml`             | StyLua formatting configuration                       |
| `.github/workflows/ci.yml` | GitHub Actions workflow for configuration checks      |

## Requirements

The configuration requires:

- **Neovim** `>= 0.10.0`
- **Git**
- **C compiler** such as GCC or Clang
- **ripgrep** — required for live grep
- **fd** — recommended for file searching
- **Nerd Font** — required for terminal icons

Additional dependencies may be required by individual language servers, formatters, linters, or debuggers.

## Installation

### macOS

Using Homebrew:

```bash
brew install neovim ripgrep fd gcc
brew install --cask font-jetbrains-mono-nerd-font
```

### Arch Linux

```bash
sudo pacman -S neovim ripgrep fd gcc
```

### Ubuntu / Debian

```bash
sudo apt update
sudo apt install neovim ripgrep fd-find build-essential
```

### Clone the Configuration

Clone the repository directly into Neovim's configuration directory:

```bash
git clone https://github.com/zeropse/zero.nvim.git ~/.config/nvim
```

Launch Neovim:

```bash
nvim
```

On the first launch, LazyVim and `lazy.nvim` install the configured plugins. Mason then installs the configured language servers, formatters, linters, and debugging tools.

## Supported Languages and Tooling

The configuration includes tooling for:

| Language / Technology   | Tooling                                |
| :---------------------- | :------------------------------------- |
| JavaScript / TypeScript | TypeScript LSP, Prettier, Tailwind CSS |
| React                   | JSX/TSX support and related tooling    |
| Python                  | Pyright, Ruff formatter and linter     |
| Rust                    | `rust-analyzer`, `rustfmt`             |
| Markdown                | Enhanced syntax and Markdown tooling   |
| JSON / YAML             | Schema validation and language support |
| Docker                  | Dockerfile language support            |
| Terraform               | HCL language support                   |
| Debugging               | `nvim-dap`                             |

The exact tools installed by Mason depend on the configured LazyVim extras and plugin specifications.

## Keybindings

For the complete list of keybindings, see [`CHEATSHEET.md`](./CHEATSHEET.md).

| Mode   | Shortcut                  | Description                            |
| :----- | :------------------------ | :------------------------------------- |
| Normal | `<C-s>`                   | Save file                              |
| Normal | `<leader>v` / `<leader>h` | Split window vertically / horizontally |
| Normal | `<C-h/j/k/l>`             | Navigate between split windows         |
| Normal | `<Tab>` / `<S-Tab>`       | Next / previous buffer                 |
| Normal | `<leader>e`               | Toggle Neo-tree                        |
| Normal | `<leader>sf`              | Search files with Telescope            |
| Normal | `<leader>sg`              | Live grep with Telescope               |
| Normal | `<leader>f`               | Format buffer                          |
| Normal | `<leader>rn`              | Incremental variable rename            |
| Normal | `<leader>xx`              | Toggle workspace diagnostics           |
| Normal | `<leader>db`              | Toggle debugger breakpoint             |
| Normal | `<leader>gg`              | Open LazyGit                           |

## Management Commands

The following commands are useful for managing the configuration from within Neovim:

| Command        | Description                                            |
| :------------- | :----------------------------------------------------- |
| `:Lazy`        | View plugins, logs, and available updates              |
| `:Mason`       | Manage LSP servers, formatters, linters, and debuggers |
| `:ConformInfo` | View formatters configured for the current buffer      |
| `:checkhealth` | Check Neovim and plugin dependencies                   |

## License

This project is licensed under the [MIT License](./LICENSE).

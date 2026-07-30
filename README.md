# zero.nvim

<p align="left">
  <img src="https://img.shields.io/badge/Neovim-57A143?style=for-the-badge&logo=neovim&logoColor=white" alt="Neovim">
  <img src="https://img.shields.io/badge/LazyVim-2E3440?style=for-the-badge&logo=neovim&logoColor=white" alt="LazyVim">
  <img src="https://img.shields.io/badge/Lua-2C2D72?style=for-the-badge&logo=lua&logoColor=white" alt="Lua">
  <img src="https://img.shields.io/badge/LSP-7C3AED?style=for-the-badge&logo=neovim&logoColor=white" alt="LSP">
  <img src="https://img.shields.io/badge/Mason-FFB000?style=for-the-badge&logo=neovim&logoColor=white" alt="Mason">
  <img src="https://img.shields.io/badge/License-MIT-22C55E?style=for-the-badge" alt="MIT License">
</p>

A personal Neovim configuration built on [LazyVim](https://github.com/LazyVim/LazyVim), with LSP support, formatting, linting, debugging, fuzzy finding, file navigation, and customized keybindings.

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

## Uninstallation

To remove the configuration from your system:

```bash
# 1. Remove the Neovim configuration directory
rm -rf ~/.config/nvim

# 2. (Optional) Remove all installed plugins, state, and cache data
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
```

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

| Directory / File | Purpose                                               |
| :--------------- | :---------------------------------------------------- |
| `init.lua`       | Main configuration entry point                        |
| `lua/config/`    | Core Neovim configuration and LazyVim setup           |
| `lua/plugins/`   | Plugin specifications and custom plugin configuration |
| `CHEATSHEET.md`  | Keybinding and command reference                      |
| `.stylua.toml`   | StyLua formatting configuration                       |

## Requirements

The configuration requires:

- **Neovim** `>= 0.10.0`
- **Git**
- **C compiler** such as GCC or Clang
- **ripgrep** — required for live grep
- **fd** — recommended for file searching
- **Nerd Font** — required for terminal icons

Additional dependencies may be required by individual language servers, formatters, linters, or debuggers.

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

# ⚡ zero.nvim

<p align="left">
  <img src="https://img.shields.io/badge/Neovim-v0.10+-57AD31?style=for-the-badge&logo=neovim&logoColor=white" alt="Neovim Supported">
  <img src="https://img.shields.io/badge/Framework-LazyVim-2e3440?style=for-the-badge&logo=neovim&logoColor=white" alt="LazyVim Framework">
  <img src="https://img.shields.io/badge/Auto--Upgrades-Enabled-blue?style=for-the-badge" alt="Auto Upgrades">
  <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="License">
</p>

An all-in-one, production-grade, blazing fast Neovim configuration built on top of the **[LazyVim](https://github.com/LazyVim/LazyVim)** engine with automatic upstream updates, sub-millisecond async formatting, native debugging (DAP), and customized keybindings.

---

## ✨ Features

- **⚡ Automatic Upstream Updates**: Built-in update checker powered by `lazy.nvim` and LazyVim core engine (`:Lazy update`).
- **🔍 Fast Search & Navigation**: Integrated fuzzy finding across files, live grep, buffers, and diagnostics via Telescope & Snacks.
- **🛠️ Zero-Config LSP & Formatting**: Native LSP setup (`mason.nvim`), sub-millisecond async format-on-save (`conform.nvim`), and linting.
- **🐛 Interactive Debugging (DAP)**: Native breakpoint, stepping, and REPL debugging support for Python, JS/TS, Go, Rust, and C++.
- **🩺 Diagnostic & Symbol UI**: Visual workspace diagnostics, symbols outline, and quickfix windows via `trouble.nvim`.
- **🎨 Modern Aesthetics**: Nord colorscheme with glassmorphism transparency, statuslines (`lualine`), buffer tabs (`bufferline`), and `snacks.nvim` dashboard.
- **⌨️ Keybinding Discoverability**: Interactive keymapping popups via `which-key.nvim` plus live variable renaming (`inc-rename`).

---

## 📁 Repository Layout

```text
zero.nvim/
├── init.lua                   # Bootstrapping entry point
├── .stylua.toml               # Lua formatting rules
├── CHEATSHEET.md              # Complete keybinding reference guide
├── README.md                  # Installation & documentation
├── .github/
│   └── workflows/
│       └── ci.yml             # GitHub Actions CI workflow (StyLua + Headless test)
└── lua/
    ├── config/
    │   ├── autocmds.lua       # Custom autocommands
    │   ├── keymaps.lua        # Custom keybindings (<C-s>, <leader>v, <C-h/j/k/l>, etc.)
    │   ├── lazy.lua           # LazyVim engine setup & extras imports
    │   └── options.lua        # Vim options (relativenumber, shiftwidth=4, etc.)
    └── plugins/
        ├── colorscheme.lua    # Nord theme configuration & transparent background
        ├── git.lua            # Gitsigns & LazyGit integration
        ├── inc-rename.lua     # Real-time incremental renaming (<leader>rn)
        ├── neotree.lua        # NeoTree file explorer specs
        ├── sleuth.lua         # Automatic indent tab size detection (tpope/vim-sleuth)
        ├── telescope.lua      # Telescope search specs
        └── ui.lua             # Snacks dashboard, Bufferline, and Lualine
```

---

## 🛠️ Prerequisites

Ensure you have the following installed on your system:

- **Neovim** `>= v0.10.0`
- **Git**
- **C Compiler** (`gcc`, `clang`, or `make`)
- **ripgrep** (required for Telescope live grep)
- **fd** (recommended for fast file search)
- **Nerd Font** (e.g. *JetBrainsMono Nerd Font*)

---

## 🚀 Installation

Follow these steps to install and set up **`zero.nvim`** as your primary editor configuration.

### Step 1: Install Dependencies

**macOS (via Homebrew):**
```bash
brew install neovim ripgrep fd gcc
brew install --cask font-jetbrains-mono-nerd-font
```

**Linux (Debian / Ubuntu / Arch):**
```bash
# Arch Linux
sudo pacman -S neovim ripgrep fd gcc

# Ubuntu / Debian
sudo apt update && sudo apt install neovim ripgrep fd-find build-essential
```

---

### Step 2: Backup Existing Neovim Setup

```bash
# Backup existing config
mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null

# Backup state and cache (optional fresh start)
mv ~/.local/share/nvim ~/.local/share/nvim.bak 2>/dev/null
mv ~/.local/state/nvim ~/.local/state/nvim.bak 2>/dev/null
```

---

### Step 3: Install `zero.nvim` to `~/.config/nvim`

Choose one of the following methods:

#### Option A: Copy Local Directory directly
```bash
mkdir -p ~/.config
cp -r /Users/zeropse/Developer/zero.nvim ~/.config/nvim
```

#### Option B: Clone directly from GitHub
```bash
mkdir -p ~/.config
git clone https://github.com/zeropse/zero.nvim.git ~/.config/nvim
```

---

### Step 4: Launch Neovim

```bash
nvim
```

On first launch, `lazy.nvim` automatically downloads all configured plugins, and `Mason` installs language servers, formatters, and debuggers in the background.

---

## 🧰 Supported Languages & Tooling Ecosystem

`zero.nvim` includes pre-configured LazyVim extras for:

- **TypeScript / JavaScript / React**: Prettier, TS-Server, TailwindCSS, JSX syntax.
- **Python**: Pyright, Ruff formatter & linter.
- **Rust**: `rustfmt` & `rust-analyzer`.
- **Markdown**: Enhanced syntax, preview, and heading navigation.
- **JSON / YAML**: SchemaStore validation.
- **Docker / Terraform**: Dockerfile LSP and HCL syntax highlighting.
- **Debugging**: `nvim-dap` core for breakpoints and stepping.

---

## ⌨️ Keybindings Quick Reference

> For the complete list of shortcuts, read **[CHEATSHEET.md](./CHEATSHEET.md)**.

| Mode | Shortcut | Description |
| :--- | :--- | :--- |
| **Normal** | `<C-s>` | Save file |
| **Normal** | `<leader>v` / `<leader>h` | Split window vertically / horizontally |
| **Normal** | `<C-h/j/k/l>` | Navigate between split windows |
| **Normal** | `<Tab>` / `<S-Tab>` | Next / Previous buffer tab |
| **Normal** | `<leader>e` | Toggle NeoTree file explorer |
| **Normal** | `<leader>sf` | Search files (Telescope) |
| **Normal** | `<leader>sg` | Live grep workspace (Telescope) |
| **Normal** | `<leader>f` | Format buffer (`conform.nvim`) |
| **Normal** | `<leader>rn` | Incremental variable rename (`inc-rename`) |
| **Normal** | `<leader>xx` | Toggle Workspace Diagnostics (`Trouble`) |
| **Normal** | `<leader>db` | Toggle Debugger Breakpoint (`DAP`) |
| **Normal** | `<leader>gg` | Open LazyGit floating terminal |

---

## ⚙️ Diagnostic & Management Commands

Run these inside Neovim:

- `:Lazy` — Plugin manager status, logs, and updates.
- `:Mason` — View, install, or update LSPs, formatters, and debuggers.
- `:ConformInfo` — Display active buffer formatters.
- `:checkhealth` — Verify Neovim setup health and dependencies.

---

## 📄 License

MIT © zeropse
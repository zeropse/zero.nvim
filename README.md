# ⚡ zero.nvim

<p align="left">
  <img src="https://img.shields.io/badge/Neovim-v0.10+-57AD31?style=for-the-badge&logo=neovim&logoColor=white" alt="Neovim Supported">
  <img src="https://img.shields.io/badge/Framework-LazyVim-2e3440?style=for-the-badge&logo=neovim&logoColor=white" alt="LazyVim Framework">
  <img src="https://img.shields.io/badge/Auto--Upgrades-Enabled-blue?style=for-the-badge" alt="Auto Upgrades">
</p>

An all-in-one, blazing fast, modular Neovim configuration built on top of the [LazyVim](https://github.com/LazyVim/LazyVim) engine with automatic upstream updates and custom personal keybindings.

---

## ✨ Features

- **⚡ Automatic Upstream Updates**: Built-in update checker powered by `lazy.nvim` and LazyVim core engine (`:Lazy update`).
- **🔍 Fast Search & Navigation**: Pre-configured with Telescope & Snacks.nvim for fast file search, live grep, and buffer navigation.
- **🛠️ Zero-Config LSP & Formatting**: Native LSP setup (`mason.nvim`), auto-formatting (`conform.nvim`), and linting.
- **🎨 Modern UI**: Nord theme with glassmorphism transparency, statuslines (`lualine`), buffer tabs (`bufferline`), and dashboard.
- **⌨️ Discoverable Keybindings**: Built-in interactive keymap discovery (`which-key`).

---

## 🛠️ Prerequisites

Ensure you have the following installed:

- **Neovim** `>= v0.10.0`
- **Git**
- **C Compiler** (`gcc` or `clang`)
- **ripgrep** (for live grep)
- **fd** (recommended for file searching)
- **Nerd Font** (e.g. *JetBrainsMono Nerd Font*)

---

## 🚀 Installation

### Step 1: Install Dependencies (macOS via Homebrew)

```bash
brew install neovim ripgrep fd gcc
brew install --cask font-jetbrains-mono-nerd-font
```

### Step 2: Backup Existing Neovim Configuration

```bash
mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null
```

### Step 3: Install Configuration to `~/.config/nvim`

```bash
# Option A: Copy configuration directly to ~/.config/nvim
mkdir -p ~/.config
cp -r /Users/zeropse/Developer/zero.nvim ~/.config/nvim

# Option B: Clone repository directly to ~/.config/nvim
git clone https://github.com/zeropse/zero.nvim.git ~/.config/nvim
```

### Step 4: Launch Neovim

```bash
nvim
```

LazyVim will automatically bootstrap itself and install all required plugins and LSP servers on initial launch.

---

## ⌨️ Custom Keybindings

| Mode | Keybinding | Description |
| :--- | :--- | :--- |
| **Normal** | `<C-s>` | Save file |
| **Normal** | `<leader>v` | Split window vertically |
| **Normal** | `<leader>h` | Split window horizontally |
| **Normal** | `<C-h/j/k/l>` | Navigate split windows |
| **Normal** | `<Tab>` / `<S-Tab>` | Next / Previous buffer |
| **Normal** | `<leader>e` | Toggle file explorer |

Press `<space>` in Normal mode to open interactive keybinding hints (`which-key`).

---

## 📄 License

MIT © zeropse
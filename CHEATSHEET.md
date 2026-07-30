# ⚡ zero.nvim Complete Keybinding Cheatsheet

> **Leader Key**: `<Space>`

---

## 🚀 Core Editor & File Shortcuts

| Mode       | Shortcut     | Description                                           |
| :--------- | :----------- | :---------------------------------------------------- |
| **Normal** | `<C-s>`      | Save current file                                     |
| **Normal** | `<leader>sn` | Save without auto-formatting (`noautocmd w`)          |
| **Normal** | `<C-q>`      | Quit editor                                           |
| **Normal** | `x`          | Delete single character without yanking               |
| **Visual** | `p`          | Preserve last yanked text when pasting over selection |
| **Normal** | `<leader>f`  | Format buffer via `conform.nvim`                      |
| **Normal** | `<leader>rn` | Live incremental variable rename via `inc-rename`     |
| **Normal** | `<leader>lw` | Toggle line wrapping                                  |

---

## 🪟 Window Split Management

| Mode       | Shortcut                                 | Description                                         |
| :--------- | :--------------------------------------- | :-------------------------------------------------- |
| **Normal** | `<leader>v`                              | Split window vertically                             |
| **Normal** | `<leader>h`                              | Split window horizontally                           |
| **Normal** | `<leader>se`                             | Equalize split window sizes                         |
| **Normal** | `<leader>xs`                             | Close active split window                           |
| **Normal** | `<C-h>` / `<C-j>` / `<C-k>` / `<C-l>`    | Move cursor Left / Down / Up / Right between splits |
| **Normal** | `<Up>` / `<Down>` / `<Left>` / `<Right>` | Resize split window height / width                  |

---

## 📑 Buffer & Tab Navigation

| Mode       | Shortcut                    | Description                          |
| :--------- | :-------------------------- | :----------------------------------- |
| **Normal** | `<Tab>` / `<S-Tab>`         | Switch to Next / Previous buffer tab |
| **Normal** | `<leader>b`                 | Open new empty buffer                |
| **Normal** | `<leader>to`                | Open new tab                         |
| **Normal** | `<leader>tx`                | Close current tab                    |
| **Normal** | `<leader>tn` / `<leader>tp` | Navigate to Next / Previous tab      |

---

## 🔍 Telescope (Fuzzy Search)

| Mode       | Shortcut           | Description                          |
| :--------- | :----------------- | :----------------------------------- |
| **Normal** | `<leader>sf`       | Search files (includes hidden files) |
| **Normal** | `<leader>sg`       | Live grep across workspace           |
| **Normal** | `<leader>sh`       | Search help tags                     |
| **Normal** | `<leader>sw`       | Search word under cursor             |
| **Normal** | `<leader>sd`       | Search workspace diagnostics         |
| **Normal** | `<leader>sr`       | Resume previous Telescope search     |
| **Normal** | `<leader>s.`       | Search recent files                  |
| **Normal** | `<leader><leader>` | Find existing open buffers           |

---

## 📁 NeoTree File Explorer

| Mode       | Shortcut      | Description                         |
| :--------- | :------------ | :---------------------------------- |
| **Normal** | `<leader>e`   | Toggle NeoTree file explorer (left) |
| **Normal** | `<leader>ngs` | Open floating Git Status tree       |

---

## 🩺 Trouble (Diagnostics & Symbols)

| Mode       | Shortcut     | Description                              |
| :--------- | :----------- | :--------------------------------------- |
| **Normal** | `<leader>xx` | Toggle Workspace Diagnostics panel       |
| **Normal** | `<leader>xX` | Toggle Current Buffer Diagnostics panel  |
| **Normal** | `<leader>cs` | Toggle Document Symbols panel            |
| **Normal** | `<leader>cl` | Toggle LSP Definitions / References list |
| **Normal** | `<leader>xQ` | Toggle Quickfix list                     |

---

## 🐛 Debugging (DAP Core)

| Mode       | Shortcut     | Description               |
| :--------- | :----------- | :------------------------ |
| **Normal** | `<leader>db` | Toggle Breakpoint         |
| **Normal** | `<leader>dc` | Continue / Start Debugger |
| **Normal** | `<leader>di` | Step Into                 |
| **Normal** | `<leader>do` | Step Over                 |
| **Normal** | `<leader>dO` | Step Out                  |
| **Normal** | `<leader>dr` | Open REPL                 |
| **Normal** | `<leader>du` | Toggle Debugger UI        |

---

## 🔀 Git Integration

| Mode       | Shortcut      | Description                      |
| :--------- | :------------ | :------------------------------- |
| **Normal** | `<leader>gg`  | Open LazyGit floating terminal   |
| **Normal** | `]h` / `[h`   | Jump to Next / Previous git hunk |
| **Normal** | `<leader>ghs` | Stage current hunk               |
| **Normal** | `<leader>ghr` | Reset current hunk               |
| **Normal** | `<leader>ghp` | Preview current hunk inline      |
| **Normal** | `<leader>ghb` | Blame line in popup              |

---

## ⚙️ Essential System Commands

- `:Lazy` — Plugin manager status & updates
- `:Mason` — Manage installed LSPs, formatters, and debuggers
- `:ConformInfo` — View active buffer formatters
- `:checkhealth` — Run Neovim environment health checks

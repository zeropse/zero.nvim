# ⚡ zero.nvim Cheatsheet

## Modes

- **Normal Mode**: Default mode for navigation and commands (`Esc`)
- **Insert Mode**: `i`, `I`, `a`, `A` (exit with `Esc`)
- **Visual Mode**: `v` (character), `V` (line), `Ctrl+v` (block)
- **Command Mode**: `:`

## Navigation & Motions

- **Basic**: `h` (left), `j` (down), `k` (up), `l` (right)
- **Words**: `w` (next word), `b` (previous word), `e` (end of word)
- **Lines**: `0` (start), `^` (first non-whitespace), `$` (end)
- **Scrolling**: `Ctrl+d` (down & center), `Ctrl+u` (up & center)
- **File**: `gg` (top), `G` (bottom)

## Actions

- `d`: Delete
- `c`: Change
- `y`: Yank (copy)
- `p`, `P`: Paste (after, before)
- `u`: Undo
- `Ctrl+r`: Redo

## Text Objects and Motions

- `w`: Word | `s`: Sentence | `p`: Paragraph
- `'`, `"`, `` ` ``: Quotes
- `(`, `)`, `{`, `}`, `<`, `>`: Brackets
- `i`, `a`: Inside / Around (e.g. `ciw`, `di"`, `ca{`)

## Keybindings (Leader = Space)

- **File Actions**:
  - Save file: `<C-s>`
  - Save without auto-formatting: `<leader>sn`
  - Quit editor: `<C-q>`
- **Deleting & Pasting**:
  - Delete single character without yanking: `x`
  - Preserve last yank when pasting: `p` (in visual mode)
- **Window Management**:
  - Split vertically: `<leader>v`
  - Split horizontally: `<leader>h`
  - Equalize window sizes: `<leader>se`
  - Close active split: `<leader>xs`
  - Navigate splits: `<C-k>`, `<C-j>`, `<C-h>`, `<C-l>`
  - Window resizing: `<Up>`, `<Down>`, `<Left>`, `<Right>`
- **Buffer & Tab Management**:
  - Next / Prev buffer: `<Tab>` / `<S-Tab>`
  - New buffer: `<leader>b`
  - New / Close tab: `<leader>to` / `<leader>tx`
  - Next / Prev tab: `<leader>tn` / `<leader>tp`
- **Toggle Options**:
  - Toggle line wrap: `<leader>lw`

## Plugin Keybindings

- **Telescope (Fuzzy Search)**:
  - Find files: `<leader>sf`
  - Live grep: `<leader>sg`
  - Help tags: `<leader>sh`
  - Search word under cursor: `<leader>sw`
  - Search diagnostics: `<leader>sd`
- **NeoTree (File Explorer)**:
  - Toggle explorer: `<leader>e`
  - Float Git Status: `<leader>ngs`
- **Git Integration**:
  - Open LazyGit: `<leader>gg`
  - Next / Prev hunk: `]h` / `[h`
  - Preview hunk: `<leader>ghp`
  - Blame line: `<leader>ghb`
- **Formatting**:
  - Format buffer manually: `<leader>f`
- **LazyVim Commands**:
  - Plugin manager: `:Lazy`
  - Mason LSP/Formatter manager: `:Mason`

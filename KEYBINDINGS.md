# Keyboard Bindings Reference

**Source of Truth:** [`karabiner/src/index.ts`](karabiner/src/index.ts)

---

## 🔑 Hyper Key

**Caps Lock** is remapped to a Hyper key:
- **Tap:** Escape
- **Hold:** Hyper modifier (⌃⌥⇧⌘) for layer activation

---

## 📱 Hyper + O — Open Apps

| Key | Application |
|-----|-------------|
| `c` | Visual Studio Code |
| `d` | Discord |
| `e` | Mail |
| `f` | Finder |
| `g` | Google Chrome |
| `m` | Messages |
| `n` | Notes |
| `p` | Spotify |
| `s` | Slack |
| `t` | Ghostty (Terminal) |
| `w` | Passwords |

---

## 🪟 Hyper + W — Window Management

| Key | Action |
|-----|--------|
| `h` | Left half |
| `l` | Right half |
| `k` | Top half |
| `j` | Bottom half |
| `f` | Maximize |
| `c` | Center |
| `y` | Previous display |
| `o` | Next display |
| `u` | Previous tab |
| `i` | Next tab |
| `n` | Next window (same app) |
| `;` | Hide window |

---

## ⌨️ Hyper + V — Vim Navigation

| Key | Action |
|-----|--------|
| `h` | ← Left |
| `j` | ↓ Down |
| `k` | ↑ Up |
| `l` | → Right |
| `u` | Page Down |
| `i` | Page Up |
| `b` | Back word (⌥←) |
| `w` | Forward word (⌥→) |
| `0` | Start of line (⌘←) |
| `4` | End of line (⌘→) |

---

## 💻 Hyper + T — Terminal (Ctrl shortcuts)

| Key | Action |
|-----|--------|
| `l` | Clear screen |
| `a` | Beginning of line |
| `e` | End of line |
| `u` | Clear line before cursor |
| `k` | Clear line after cursor |
| `w` | Delete word before cursor |
| `c` | Cancel/Interrupt (SIGINT) |
| `d` | Exit/EOF |
| `z` | Suspend (SIGTSTP) |
| `r` | Reverse search history |
| `p` | Previous command |
| `n` | Next command |
| `f` | Forward one char |
| `b` | Back one char |
| `g` | Cancel current input |
| `o` | Execute and bring back |
| `x` | Extended command prefix |

---

## ⚙️ Hyper + S — System Controls

| Key | Action |
|-----|--------|
| `u` | Volume up |
| `j` | Volume down |
| `m` | Mute |
| `i` | Brightness up |
| `k` | Brightness down |
| `p` | Play/Pause |
| `;` | Fast forward |
| `,` | Rewind |
| `l` | Lock screen |
| `d` | Toggle Do Not Disturb |
| `t` | Toggle dark mode |

---

## 🚀 Hyper + R — Raycast

| Key | Action |
|-----|--------|
| `e` | Emoji search |
| `c` | Color picker |
| `h` | Clipboard history |
| `a` | AI chat |
| `p` | Confetti 🎉 |
| `s` | Snippets |
| `q` | Quicklinks |
| `n` | Notes |

---

## 🌐 Hyper + B — Browse

| Key | URL |
|-----|-----|
| `g` | github.com |
| `y` | youtube.com |
| `t` | twitter.com |
| `r` | reddit.com |
| `h` | news.ycombinator.com |

---

## 🔧 Configuration

The keybindings are defined in TypeScript and compiled to Karabiner JSON:

```bash
cd karabiner
npm install
npm run build  # Outputs to ~/.config/karabiner/karabiner.json
```

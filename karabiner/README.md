# Karabiner Config

My personal Karabiner-Elements configuration using [karabiner.ts](https://github.com/evan-liu/karabiner.ts).

## Setup

```bash
npm install
npm run build
```

## Key Mappings

### Hyper Key
- **Caps Lock** → Hyper Key (⌘⌃⌥⇧) when held, Escape when tapped alone
- The Hyper key can also be used as a modifier in other apps (e.g., shortcuts in VS Code)

### Layers (all activated with Hyper +)

| Layer | Key | Description |
|-------|-----|-------------|
| Open Apps | `O` | Launch applications |
| Window | `W` | Window management (via Raycast) |
| Vim | `V` | Vim-style navigation (hjkl) |
| System | `S` | System controls (volume, brightness, media) |
| Raycast | `R` | Raycast commands |
| Terminal | `T` | Terminal shortcuts |
| Browse | `B` | Open websites |

### Open Apps (Hyper + O + ...)

| Key | App |
|-----|-----|
| `C` | VS Code |
| `D` | Discord |
| `E` | Mail |
| `F` | Finder |
| `G` | Chrome |
| `M` | Messages |
| `N` | Notes |
| `P` | Spotify |
| `S` | Slack |
| `T` | Ghostty |
| `W` | Passwords |

### Window Management (Hyper + W + ...)

| Key | Action |
|-----|--------|
| `H/J/K/L` | Left/Bottom/Top/Right half |
| `F` | Maximize |
| `C` | Center |
| `Y/O` | Previous/Next display |
| `U/I` | Previous/Next tab |
| `N` | Next window of same app |

### Vim Navigation (Hyper + V + ...)

| Key | Action |
|-----|--------|
| `H/J/K/L` | Arrow keys |
| `U/I` | Page down/up |
| `B/W` | Word back/forward |
| `0/4` | Start/End of line |

### Terminal Shortcuts (Hyper + T + ...)

| Key | Action |
|-----|--------|
| `L` | Clear screen |
| `A/E` | Start/End of line |
| `U/K` | Clear line before/after cursor |
| `W` | Delete word before cursor |
| `C` | Cancel (SIGINT) |
| `D` | Exit/EOF |
| `Z` | Suspend (SIGTSTP) |
| `R` | Reverse search history |
| `P/N` | Previous/Next command |
| `F/B` | Forward/Back char |

### System Controls (Hyper + S + ...)

| Key | Action |
|-----|--------|
| `U/J` | Volume up/down |
| `M` | Mute |
| `I/K` | Brightness up/down |
| `P` | Play/Pause |
| `;/,` | Next/Previous track |
| `L` | Lock screen |
| `D` | Toggle Do Not Disturb |
| `T` | Toggle dark mode |

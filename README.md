# Dotfiles

My personal configuration files for macOS.

## Structure

- **alacritty**: Terminal configuration
- **bash**: Bash shell configuration
- **git**: Git configuration
- **hammerspoon**: Desktop automation (window management, etc.)
- **karabiner**: Keyboard customization (Karabiner-Elements)
- **tmux**: Terminal multiplexer configuration
- **zsh**: Zsh shell configuration

## Setup

### Karabiner

The Karabiner configuration is written in TypeScript and generates the JSON config.

1. Navigate to the directory:
   ```bash
   cd karabiner
   ```
2. Install dependencies:
   ```bash
   npm install
   ```
3. Build the configuration (updates `~/.config/karabiner/karabiner.json`):
   ```bash
   npm run build
   ```

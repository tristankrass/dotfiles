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

### Prerequisites

- [GNU Stow](https://www.gnu.org/software/stow/) (`brew install stow`)
- [fnm](https://github.com/Schniz/fnm) (Fast Node Manager: `brew install fnm`)
- [Node.js](https://nodejs.org/) (installed via fnm: `fnm install --lts`)

### Installation

1. Use `stow` to symlink the configuration files to your home directory:

   ```bash
   stow -v alacritty bash git hammerspoon karabiner tmux zsh
   ```

2. Set up Node.js using `fnm`:

   ```bash
   fnm use --install-if-missing
   ```

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

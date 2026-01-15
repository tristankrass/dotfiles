# Dotfiles

My personal configuration files for macOS.

## Structure

- **alacritty**: Terminal configuration
- **bash**: Bash shell configuration
- **git**: Git configuration
- **hammerspoon**: Desktop automation (window management, etc.)
- **karabiner**: Keyboard customization (Karabiner-Elements)
- **setup**: System-level setup (Brewfile)
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

## System Setup

The `setup/` package contains system-level configuration:

- **Brewfile.base**: Essential development tools and applications

See [setup/README.md](setup/README.md) for detailed installation instructions.

### Installing Packages

```bash
# Install essential packages
cd setup
brew bundle --file=Brewfile.base
```

## Secrets and Work Files

### Secrets (API Keys, Tokens)

Sensitive credentials are stored in `zsh/secrets.zsh` which is git-ignored.

1. Copy the template:
   ```bash
   cp zsh/secrets.zsh.template zsh/secrets.zsh
   ```

2. Fill in your actual credentials in `zsh/secrets.zsh`

The .zshrc will automatically source this file if it exists.

### Work-Specific Configuration

Work-related aliases and functions can be stored in `~/.work_aliases` (external to this repo). The .zshrc will automatically source this file if it exists.

Example `~/.work_aliases`:
```bash
# Work-specific functions and aliases
export PROJECT_PATH="/Users/yourname/Projects/work"
alias work="cd $PROJECT_PATH"
```

## Multi-Machine Setup

To use these dotfiles across multiple machines:

1. Clone this repository:
   ```bash
   git clone git@github.com:tristankrass/dotfiles.git ~/og-dotfiles
   ```

2. Create a symlink (optional, for compatibility with existing configs):
   ```bash
   ln -s ~/og-dotfiles ~/.dotfiles
   ```

3. Install packages:
   ```bash
   cd ~/og-dotfiles/setup
   brew bundle --file=Brewfile.base
   ```

4. Stow the configurations you need:
   ```bash
   stow -v alacritty bash git hammerspoon karabiner tmux zsh
   ```

5. Set up secrets:
   ```bash
   cp zsh/secrets.zsh.template zsh/secrets.zsh
   # Edit zsh/secrets.zsh with your credentials
   ```

6. Build Karabiner config (if using):
   ```bash
   cd karabiner
   npm install
   npm run build
   ```

## Documentation

- [KEYBINDINGS.md](KEYBINDINGS.md) - Keyboard layer architecture and shortcuts

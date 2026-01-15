# Setup Package

This package contains system-level setup scripts and package definitions for macOS.

## Contents

- **Brewfile.base** - Essential development tools and applications

## Installation

### Installing Homebrew Packages

```bash
cd ~/og-dotfiles/setup
brew bundle --file=Brewfile.base
```

### Stow Behavior

This package uses `.stow-local-ignore` to prevent stowing these files to your home directory. The setup scripts are meant to be run directly from the repository, not symlinked.

## Package Categories

### Brewfile.base
- **Development Tools**: git, gh, jq, httpie
- **Modern CLI Tools**: bat, eza, fd, ripgrep
- **System Utilities**: coreutils, grep, mas, mackup
- **Media Processing**: ffmpeg, imagemagick
- **Applications**: VS Code, Docker, Discord, Figma, Firefox, Chrome
- **QuickLook Plugins**: Markdown and JSON viewers

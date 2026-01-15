# Modern CLI tool replacements and enhancements
# These tools should be installed via Homebrew (see setup/Brewfile.base)

# bat - better cat with syntax highlighting
alias cat='bat --style=plain'
alias catp='bat --style=full'  # With line numbers and git diff
alias bathelp='bat --plain --language=help'  # For piping help output

# ripgrep - better grep
alias grep='rg'

# fd - better find
# Commented out by default - can conflict with SDKMAN and other tools expecting POSIX find
# alias find='fd'

# eza - modern ls replacement with icons and git integration
# Smart ls function that handles -t flag (converts to eza's -s modified)
unalias ls 2>/dev/null  # Remove any existing ls alias
ls() {
  local args=()
  local sort_time=false

  for arg in "$@"; do
    if [[ "$arg" == *t* ]] && [[ "$arg" == -* ]] && [[ "$arg" != --* ]]; then
      # Found -t in a flag bundle (like -alt)
      sort_time=true
      # Remove 't' from the flag bundle
      arg="${arg//t/}"
      [[ "$arg" != "-" ]] && args+=("$arg")
    else
      args+=("$arg")
    fi
  done

  if $sort_time; then
    command eza --icons -s modified "${args[@]}"
  else
    command eza --icons "${args[@]}"
  fi
}

# Comprehensive ls aliases using eza
alias l='eza --icons'                                           # Basic list with icons
alias la='eza --icons -a'                                       # All files including hidden
alias ll='eza --icons -lah --git'                               # Long format, all files, human-readable, git status
alias lla='eza --icons -lah --git -s modified'                  # Long format, sorted by modified time
alias llr='eza --icons -lah --git -s modified -r'               # Long format, reverse time (oldest first)
alias llt='eza --icons -lah --git -s modified'                  # Long format, newest first (like ls -lt)
alias lls='eza --icons -lah --git -s size'                      # Long format, sorted by size
alias ld='eza --icons -lD'                                      # List directories only
alias lf='eza --icons -lf'                                      # List files only
alias lt='eza --icons --tree --level=2'                         # Tree view (2 levels)
alias ltt='eza --icons --tree --level=3'                        # Tree view (3 levels)
alias lttt='eza --icons --tree --level=4'                       # Tree view (4 levels)
alias lta='eza --icons --tree --level=2 -a'                     # Tree view with hidden files
alias lg='eza --icons -lah --git --git-ignore'                  # Long format with git, respecting .gitignore

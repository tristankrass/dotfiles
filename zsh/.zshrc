# If you come from bash you might have to change your /Users/tristankrass/.antigravity/antigravity/bin:/Users/tristankrass/.pyenv/shims:/Users/tristankrass/Library/pnpm:/Library/TeX/texbin:/Users/tristankrass/.local/state/fnm_multishells/2074_1768112652160/bin:/Users/tristankrass/.sdkman/candidates/spark/current/bin:/Users/tristankrass/.sdkman/candidates/scala/current/bin:/Users/tristankrass/.sdkman/candidates/java/current/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/Users/tristankrass/.local/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/opt/pmk/env/global/bin:/Library/Apple/usr/bin:/Library/TeX/texbin:/Applications/Wireshark.app/Contents/MacOS:/usr/local/share/dotnet:~/.dotnet/tools:/Applications/Ghostty.app/Contents/MacOS:/Users/tristankrass/Library/Application Support/Coursier/bin:/Users/tristankrass/.dotnet/tools:/Users/tristankrass/Library/Application Support/Coursier/bin:/opt/homebrew/opt/fzf/bin:/Users/tristankrass/.iximiuz/labctl/bin.
# export PATH=/Users/tristankrass/bin:/usr/local/bin:/Users/tristankrass/.antigravity/antigravity/bin:/Users/tristankrass/.pyenv/shims:/Users/tristankrass/Library/pnpm:/Library/TeX/texbin:/Users/tristankrass/.local/state/fnm_multishells/2074_1768112652160/bin:/Users/tristankrass/.sdkman/candidates/spark/current/bin:/Users/tristankrass/.sdkman/candidates/scala/current/bin:/Users/tristankrass/.sdkman/candidates/java/current/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/Users/tristankrass/.local/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/opt/pmk/env/global/bin:/Library/Apple/usr/bin:/Library/TeX/texbin:/Applications/Wireshark.app/Contents/MacOS:/usr/local/share/dotnet:~/.dotnet/tools:/Applications/Ghostty.app/Contents/MacOS:/Users/tristankrass/Library/Application Support/Coursier/bin:/Users/tristankrass/.dotnet/tools:/Users/tristankrass/Library/Application Support/Coursier/bin:/opt/homebrew/opt/fzf/bin:/Users/tristankrass/.iximiuz/labctl/bin

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  vi-mode
  docker
  docker-compose
  extract
  git
  zsh-fzf-history-search
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

source "$HOME/.sdkman/bin/sdkman-init.sh"
alias python='python3'


# Source global aliases
if [ -f "$HOME/.bash_aliases" ] ; then
  source "$HOME/.bash_aliases"
fi


# FZF - https://github.com/junegunn/fzf#using-homebrew
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(zoxide init zsh)"

# Source work related aliases
if [ -f "$HOME/.work_aliases" ] ; then
  source "$HOME/.work_aliases"
fi

eval "$(github-copilot-cli alias -- "$0")"


# FNM (Fast Node Manager) - replaced nvm
eval "$(fnm env --use-on-cd)"
export PATH="/Library/TeX/texbin:$PATH"

# pnpm
export PNPM_HOME="/Users/tristankrass/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

. "$HOME/.local/bin/env"
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh


# Fabric-ai related stuff --> https://github.com/danielmiessler/fabric#Installation
alias fabric="fabric-ai"
# Loop through all files in the ~/.config/fabric/patterns directory
for pattern_file in $HOME/.config/fabric/patterns/*; do
    # Get the base name of the file (i.e., remove the directory path)
    pattern_name=$(basename "$pattern_file")

    # Create an alias in the form: alias pattern_name="fabric --pattern pattern_name"
    alias_command="alias $pattern_name='fabric --pattern $pattern_name'"

    # Evaluate the alias command to add it to the current shell
    eval "$alias_command"
done

yt() {
    if [ "$#" -eq 0 ] || [ "$#" -gt 2 ]; then
        echo "Usage: yt [-t | --timestamps] youtube-link"
        echo "Use the '-t' flag to get the transcript with timestamps."
        return 1
    fi

    transcript_flag="--transcript"
    if [ "$1" = "-t" ] || [ "$1" = "--timestamps" ]; then
        transcript_flag="--transcript-with-timestamps"
        shift
    fi
    local video_link="$1"
    fabric -y "$video_link" $transcript_flag
}


export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"

# Source secrets (API keys, etc.) - Ignored by Git
if [ -f "$HOME/.dotfiles/zsh/secrets.zsh" ]; then
    source "$HOME/.dotfiles/zsh/secrets.zsh"
fi

# Added by Antigravity
export PATH="/Users/tristankrass/.antigravity/antigravity/bin:$PATH"



# Iximiuz
export PATH=$PATH:/Users/tristankrass/.iximiuz/labctl/bin
source <(labctl completion zsh)


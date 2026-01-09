
# Kiro CLI pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi
#
alias ls="colorls"
alias lt="ls -altr"
alias cls="clear"
# alias cd="z"  # Removed - causing circular reference issues
# alias yazi='yazi -- --config-dir ~/dotfiles/.config/yazi'
export YAZI_CONFIG_HOME="~/dotfiles/.config/yazi"

PS1='~:'

# export HISTFILESIZE=5000000
# export HISTSIZE=5000000
#
# History settings moved after oh-my-zsh to prevent override

export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/opt/homebrew/share/zsh-syntax-highlighting/highlighters

export PATH=$PATH:/usr/local/go/bin
export GO111MODULE=on
export GOPATH=$HOME/go
export GOROOT=/usr/local/go  # This is the default Go installation directory
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# GitHub CLI default organization
export GH_ORG="curantis-solutions"

# export XDG_CONFIG_HOME=$HOME/dotfiles/.config/ghostty/config


#export PS1='\[\033[01;32m\]\u \[\033[01;34m\][\W]\[\033[00m\] $ '


#Jenv Setting
export PATH="$HOME/.jenv/shims:$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

#Nvm Setting
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# Zoxide configuration
export PATH="$HOME/.cargo/bin:$PATH"

# Initialize zoxide with proper settings
eval "$(zoxide init zsh)"

# The above command creates __zoxide_z function
# We can use it directly or create our own wrapper if needed

# Add interactive zoxide alias with proper directory change
function zi() {
    local dir
    dir=$(zoxide query -i "$@") && cd "$dir"
}

# Path to your oh-my-zsh installation.
export ZSH="/Users/rakeshsanghvi/.oh-my-zsh"

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

#zsh Theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# export PATH="/opt/homebrew/opt/go@1.22/bin:$PATH"

# History settings temporarily removed - will be at end of file


#zsh autocomplete 
  if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
  fi


# Enable autocompletion
autoload -Uz compinit && compinit

# Case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Completion menu
zstyle ':completion:*' menu select

# Cache completion
zstyle ':completion::complete:*' use-cache 1


#autosuggestion plugins
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"
# bindkey '^ ' autosuggest-accept


source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-11.jdk/Contents/Home
# export PATH=$JAVA_HOME/bin:$PATH
export MAVEN_OPTS="-Dfile.encoding=UTF-8 -Duser.language=en -Duser.country=US"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

# Ensure jenv takes precedence (must be at end)
export PATH="$HOME/.jenv/shims:$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# History configuration (at very end to override everything)
export HISTSIZE=100000      # How many lines to keep in memory
export SAVEHIST=100000      # How many lines to save to the history file
export HISTFILE=~/.zsh_history  # Where to save history

# Additional history settings
setopt EXTENDED_HISTORY       # Save timestamp of command
setopt HIST_IGNORE_ALL_DUPS   # Don't record duplicates
setopt HIST_FIND_NO_DUPS      # Don't display duplicates when searching
setopt HIST_REDUCE_BLANKS     # Remove unnecessary blanks
setopt HIST_VERIFY            # Show command with history expansion to user before running it
setopt INC_APPEND_HISTORY     # Add commands to history immediately
setopt SHARE_HISTORY          # Share history between sessions

# Force reload history from file
fc -R ~/.zsh_history 2>/dev/null

# Fix history by using builtin fc directly
unalias history 2>/dev/null
alias history='builtin fc -l 1'

# Ensure history is loaded on startup
if [[ -f ~/.zsh_history ]]; then
    builtin fc -R ~/.zsh_history
fi
export PATH="/opt/homebrew/opt/go@1.22/bin:$PATH"

# Go 1.22 Configuration (fix for version mismatch)
export GOROOT=/opt/homebrew/opt/go@1.22/libexec
export GOPATH=$HOME/go
export PATH=/opt/homebrew/opt/go@1.22/bin:$PATH

# Source Go environment
source ~/.go_env

# bun completions
[ -s "/Users/rakeshsanghvi/.bun/_bun" ] && source "/Users/rakeshsanghvi/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Kubectl alias
alias k='kubectl'

# Claude Code Templates - Global Agents
export PATH="/Users/rakeshsanghvi/.claude-code-templates/bin:$PATH"


# Kiro CLI post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

alias ls="colorls"
alias lt="ls -altr"
alias cls="clear"
alias cd="z"

PS1='~:'

export HISTFILESIZE=50000
export HISTSIZE=50000
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/opt/homebrew/share/zsh-syntax-highlighting/highlighters

export GOPATH=$HOME/go
export GOROOT=/usr/local/go  # This is the default Go installation directory
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

#export PS1='\[\033[01;32m\]\u \[\033[01;34m\][\W]\[\033[00m\] $ '


#Jenv Setting
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

#Nvm Setting
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


#zoxide 

export PATH="$HOME/.cargo/bin:$PATH"
eval "$(zoxide init zsh)"

# Path to your oh-my-zsh installation.
export ZSH="/Users/rakeshsanghvi/.oh-my-zsh"

#zsh Theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/opt/homebrew/opt/go@1.22/bin:$PATH"


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


source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh



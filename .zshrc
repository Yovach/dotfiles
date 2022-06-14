export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

### Basic config

autoload -U compinit
compinit


### History
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_DUPS
HISTSIZE='128000'
SAVEHIST='128000'

### Plugins

plugins=(git rust docker zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search)

source $ZSH/oh-my-zsh.sh
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

# deno
export DENO_INSTALL="/home/quentin/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# aliases
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias find='fd'
alias du='dust'
alias cat='bat'
alias sed='sed'
alias ps='procs'

# fnm
eval "$(fnm env --use-on-cd)"

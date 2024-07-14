# Envixty .zshrc

# Use my zsh prompt
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Default Programs
export PATH="$PATH:$HOME/.local/bin:$HOME/.config/suckless/dwmblocks/scripts"
export EDITOR="nvim"
export TERMINAL="kitty"
export TERM="kitty"
export BROWSER="firefox"

# ~/Cleanup
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# History
HISTFILE=~/.cache/zsh/.zsh_history
HISTSIZE=3000
SAVEHIST=3000
setopt appendhistory


### KEYBINDINGS ###

# Delete previous word with ctrl+backspace
bindkey '^H' backward-kill-word

# Undo with Shift+Tab
bindkey '^[[Z' undo

# Beginning of line with HOME
bindkey '^[[H' beginning-of-line

# Substring History Search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# End of line with END
bindkey '^[[F' end-of-line

# Navigate Words with Ctrl+Arrows
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word


### ALIASES ###

# Pacman Aliases
alias pacsyu="sudo pacman -Syyu"
alias pacs="sudo pacman -S"
alias pacsy="sudo pacman -Syy"
alias pacrem="sudo pacman -R"
alias pacrems="sudo pacman -Rs"

alias parusyu="paru -Sua --noconfirm"
alias parus="paru -S"

# ls to exa
alias ls='eza -al --color=always --group-directories-first --icons' # my preferred listing
alias la='eza -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first --icons'  # long format
alias lt='eza -aT --color=always --group-directories-first --icons' # tree listing
alias l1='eza -al --color=always --group-directories-first --icons ../' # ls on the PARENT directory
alias l2='eza -al --color=always --group-directories-first --icons ../../' # ls on directory 2 levels up
alias l3='eza -al --color=always --group-directories-first --icons ../../../' # ls on directory 3 levels up
alias l4='eza -al --color=always --group-directories-first --icons ../../../../' # ls on directory 4 levels up
alias l5='eza -al --color=always --group-directories-first --icons ../../../../../' # ls on directory 5 levels up
alias l6='eza -al --color=always --group-directories-first --icons ../../../../../../' # ls on directory 6 levels up
alias l7='eza -al --color=always --group-directories-first --icons ../../../../../../../' # ls on directory 7 levels up
alias l8='eza -al --color=always --group-directories-first --icons ../../../../../../../../' # ls on directory 8 levels up
alias l9='eza -al --color=always --group-directories-first --icons ../../../../../../../../../' # ls on directory 9 levels up

# Parent Directory alias
alias 1.="cd .."
alias 2.="cd ../.."
alias 3.="cd ../../.."
alias 4.="cd ../../../.."
alias 5.="cd ../../../../.."
alias 6.="cd ../../../../../.."
alias 7.="cd ../../../../../../.."
alias 8.="cd ../../../../../../../.."
alias 9.="cd ../../../../../../../../.."

# Home Folder alias
alias ~="cd ~"

# Previous Directory
alias c-="cd -"

# Neovim
alias vi="nvim"
alias vim="nvim"



# Load Plugins
source $HOME/.local/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.local/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.local/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh
source $HOME/.local/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

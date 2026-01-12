set fish_greeting
set fish_history_max 0

fish_add_path /Users/co/hf/_work/commands
fish_add_path /opt/homebrew/bin
fish_add_path /Users/co/.local/bin
fish_add_path /Users/co/.cargo/bin
fish_add_path /Users/co/go/bin
fish_add_path /Users/co/.juliaup/bin

bind ctrl-k history-search-backward
bind ctrl-j history-search-forward
fish_vi_key_bindings

set -x EDITOR nvim
set -x K9S_CONFIG_DIR /Users/co/.config/k9s

alias ls='eza -l'
alias lv='NVIM_APPNAME="lazyvim" nvim'
alias av='NVIM_APPNAME="AstroNvim" nvim'
alias v=nvim
alias g=lazygit
alias dotfiles='git "--git-dir=$HOME/.dotfiles/" "--work-tree=$HOME"'
alias zed=/Applications/Zed.app/Contents/MacOS/cli

alias k=kubectl
alias ks=kubens
alias kc=kubectx
alias tf=terraform
alias cd=z
alias ssh='TERM=xterm command ssh'

fzf --fish | FZF_ALT_C_COMMAND= FZF_CTRL_T_COMMAND= source
kubectl completion fish | source
starship init fish | source
zoxide init --cmd cd fish | source
atuin init fish --disable-up-arrow | source

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

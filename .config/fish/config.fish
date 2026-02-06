set fish_greeting
set fish_history_max 0

fish_add_path /Users/co/.claude/skills/wk/scripts
fish_add_path /opt/homebrew/bin
fish_add_path /Users/co/.local/bin
fish_add_path /Users/co/.cargo/bin
fish_add_path /Users/co/go/bin
# fnm (Node version manager)
fnm env --use-on-cd --shell fish | source
fish_add_path /Users/co/.juliaup/bin

bind ctrl-k history-search-backward
bind ctrl-j history-search-forward
fish_vi_key_bindings

set -x EDITOR nvim
set -x K9S_CONFIG_DIR /Users/co/.config/k9s

# sccache - shared compilation cache for Rust
set -x SCCACHE_DIR /Users/co/.cache/sccache
set -x SCCACHE_CACHE_SIZE 100G
set -x RUSTC_WRAPPER sccache

alias ls='eza -l'
alias v=nvim
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

# Secrets loaded from conf.d/secrets.fish (not tracked in dotfiles)

# AWS Vault - separate keychains for RO (default) and RW
# RO uses aws-vault-ro keychain (new password) - this is what Claude uses
set -x AWS_VAULT_KEYCHAIN_NAME aws-vault-ro
# RW alias uses aws-vault keychain (existing password) with RW config
alias aws-vault-rw="AWS_VAULT_KEYCHAIN_NAME=aws-vault AWS_CONFIG_FILE=~/.aws/config-rw aws-vault"

# Elasticsearch
set -x ELASTICSEARCH_URL "https://huggingface-c77f3b.es.us-east-1.aws.elastic.cloud"
set -x ELASTICSEARCH_API_KEY "$ES_TOKEN_READ"

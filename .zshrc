# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
eval "$(rbenv init -)"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

eval "$(starship init zsh)"

# Git command aliases
alias 'gmr'='git merge $(git remote)/$(git branch --contains | cut -d " " -f 2)'
alias 'ghk'='git fetch --prune && git branch -vv | grep ': gone]' | awk '{print $1}' | xargs -r git branch -d'

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
# fnm
eval "$(fnm env --use-on-cd)"

# alias
alias wsc="cd /Users/artsmp/Documents/workspace/code"
alias ws="cd /Users/artsmp/Documents/workspace"
alias ss="cd /Users/artsmp/Documents/studyspace"
alias i="cd /Users/artsmp/Documents/studyspace/i"
alias f="cd /Users/artsmp/Documents/studyspace/f"
alias u="cd /Users/artsmp"

alias c="code"
alias zsh="code ~/.zshrc"

alias pn="pnpm"
alias d="pnpm dev"
alias b="pnpm build"

alias gcp="git cherry-pick"
alias gaa="git add ."
alias gcm="git commit -m"
alias gpl="git pull"
alias gps="git push"
alias gc="git clone"
alias gcam='git add -A && git commit -m'
alias gfrb='git fetch origin && git rebase origin/master'

# Go to project root
alias grt='cd "$(git rev-parse --show-toplevel)"'

# starship
eval "$(starship init zsh)"

# pnpm
export PNPM_HOME="/Users/artsmp/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

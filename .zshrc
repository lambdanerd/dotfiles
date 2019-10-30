#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export PATH="$HOME/.jenv/bin:/usr/local/opt/python/libexec/bin:$HOME/.local/bin:$HOME/.cargo/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# I'm lazy af.
alias c="code-insiders"
alias dtj="dhall-to-json"
alias dtje="dhall-to-json --explain"
alias dtjp="dhall-to-json --pretty"
alias gh="open https://github.com"
alias git="hub"
alias ll="ls -halF"
alias lsaf="ls -aF"
alias refresh="source ~/.zshrc"
alias u="ucm"
alias vi="nvi"
alias ydl="youtube-dl"

# iTerm2 integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# init jenv
eval "$(jenv init -)"

# enable stack autocompletion
autoload -U +X bashcompinit && bashcompinit
eval "$(stack --bash-completion-script stack)"

# I use Starship as my prompt.
# It's written in Rust. It's pretty dope.
# https://starship.rs/
eval "$(starship init zsh)"

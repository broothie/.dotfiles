### Case-insensitive tab completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

### Plugins
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh/z/zsh-z.plugin.zsh

### Prompt
git_prompt_info() {
    if [[ ! -z $vcs_info_msg_0_ ]]; then echo " $vcs_info_msg_0_"; fi
}

autoload -Uz add-zsh-hook vcs_info
setopt prompt_subst
add-zsh-hook precmd vcs_info

export PROMPT='%(?.%F{green}.%F{red})$%f '
export RPROMPT='%F{yellow}$vcs_info_msg_0_%f %F{cyan}%~%f'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
zstyle ':vcs_info:git:*' formats       '(%b%u%c)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'

### bin
export PATH="$PATH:$HOME/bin"

### Command Aliases
alias mine=rubymine

### Machine
source "$HOME/.dotfiles/machine.zshrc"

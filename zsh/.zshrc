# For default template of .zshrc: https://github.com/ohmyzsh/ohmyzsh/blob/master/templates/zshrc.zsh-template

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# ------------------------------------------------------ PLUGINS ------------------------------------------------------

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/

plugins=(
  # Built-In oh-my-zsh:
  docker
  docker-compose
  fzf
  git
  git-extras
  z

  # Custom:
  fzf-tab                 # https://github.com/Aloxaf/fzf-tab
  zsh-autosuggestions     # https://github.com/zsh-users/zsh-autosuggestions
  zsh-completions         # https://github.com/zsh-users/zsh-completions
  zsh-syntax-highlighting # https://github.com/zsh-users/zsh-syntax-highlighting
)

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

# ----------------------------------------------------- GLOBAL VARs. --------------------------------------------------

source $ZSH/oh-my-zsh.sh

export EDIOTR='nvim'
export VISUAL='nvim'

setopt HIST_IGNORE_SPACE # commands started with space will be ignored in history

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ------------------------------------------------------ ALIASES ------------------------------------------------------
source ~/.aliases.zsh
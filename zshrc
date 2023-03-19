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

# package management:
alias updt='sudo pacman -Syyu' # Arch Linux: upgrade and optionally install package(s)

# terminal-related:
alias cl='clear'
function x { xdg-open $1 2>/dev/null &! } # opens file with default xdg application
function kn { konsole . 2>/dev/null &! }  # open new terminal with current path
function cht { curl cht.sh/$1 }           # cheat.sh handy man replacement
function fd { find ./ -iname "*$1*" }     # handy find alias
function cd { builtin cd "$@" && l }      # prints content of recently opened directory

# ls (exa):
alias l='exa -l --group-directories-first --git --grid'
alias la='exa -la --group-directories-first --git --grid'
alias lt='exa --tree'

# file editing:
alias -s csv=code
alias -s md=code
alias -s txt=nvim
alias -s {html,css,js,jsx,ts}=code
alias v="nvim"
alias diff=delta # https://github.com/dandavison/delta/blob/master/etc/completion/completion.zsh

# third-party/rest:
alias yt=yt-dlp
function wttr { curl v2.wttr.in/$1 }                       # checks weather of desired location
function trimvid { ffmpeg -ss $1 -i $2 -to $3 -c copy $4 } # trim from $1 (HH:MM:SS) to $3 (HH:MM:SS); input file $2 to output file $4 (name of output must have proper extension)
function spaces { for file in *; do mv "$file" `echo $file | tr ' ' '_'` ; done } # space to underscore in filename for every file
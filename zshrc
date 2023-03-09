# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/

plugins=(
  fzf
  git
  z
  zsh-autosuggestions     # https://github.com/zsh-users/zsh-autosuggestions
  zsh-completions         # https://github.com/zsh-users/zsh-completions
  zsh-syntax-highlighting # https://github.com/zsh-users/zsh-syntax-highlighting
  docker
  docker-compose
)

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
source $ZSH/oh-my-zsh.sh

export EDIOTR='nvim'
export VISUAL='nvim'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

setopt HIST_IGNORE_SPACE # commands started with space will be ignored in history

# -#-#-#-#-#- personal aliases, functions etc. -#-#-#-#-#-

# OS management
alias cl='clear'
alias updt='sudo pacman -Syyu' # Arch Linux: upgrade and optionally install package(s)

function x { xdg-open $1 2>/dev/null &! } # opens file with default xdg application
function cht { curl cht.sh/$1 } # cheat.sh is handy man replacement
function kn { konsole . 2>/dev/null &! } # open new terminal with current path
function spaces { for file in *; do mv "$file" `echo $file | tr ' ' '_'` ; done } # space to underscore in filename for every file
alias count='find . -type f | wc -l'

# ls replacement
alias l='exa -l --group-directories-first --git --grid'
alias la='exa -la --group-directories-first --git --grid'
alias lt='exa --tree'

function cd {
  builtin cd "$@" && l
}

# editing
alias -s csv=code
alias -s md=code
alias -s txt=nvim
alias -s {html,css,js,jsx,ts}=code
alias v="nvim"

# misc.
function wttr { curl v2.wttr.in/$1 }
alias yt=yt-dlp

# triming video:
# trim from $1 (HH:MM:SS) to $3 (HH:MM:SS)
# input file $2 to output file $4 (name of output must have proper extension)
function trimvid {
  ffmpeg -ss $1 -i $2 -to $3 -c copy $4
}

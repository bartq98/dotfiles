# ------------------------------------------------------ GENERAL ------------------------------------------------------
alias cl='clear'

# ls (eza):
alias l='eza -l --group-directories-first --grid --git'
alias la='eza -la --group-directories-first --grid --git'
alias lt='eza --tree'


function spaces { for file in *; do mv "$file" `echo $file | tr ' ' '_'` ; done } # space to underscore in filename for every file

# xdg-open related
function x { xdg-open $1 2>/dev/null &! } # opens file with default xdg application
function kn { konsole . 2>/dev/null &! }  # open new terminal with current path

# helpers
function cht { curl cht.sh/$1 } # cheat.sh handy man replacement

# ---------------------------------------------------- ARCH LINUX -----------------------------------------------------
# pacman
alias updt='sudo pacman -Syyu'                                                # upgrade and optionally install package(s)
alias pacman_list_all='pacman -Q'                                             # list all installed packages
alias pacman_explicitly_installed='pacman -Qe'                                # list excplicitly installed packages
alias pacman_clean_orphaned_packages='sudo pacman -Qdtq | sudo pacman -Rns -' # uninstall orhpaned dependencies
alias pacman_outside_official_repo_packages='pacman -Qm'                      # list packages installed e.g from AUR, pkgbuild etc.

# flatpak


# ---------------------------------------------------- PROGRAMMING ----------------------------------------------------
alias v="nvim"
alias rg='rg --threads $(nproc)'      # use all threads for searching given pattern
function fd { find ./ -iname "*$1*" } # handy find alias
function rgp { rg --files --threads=$(nproc) | xargs realpath | xargs rg -in $1 } # use ripgrep with absoulte path for all files
function rg_py { find ./ -iname "*.py" | xargs rg -in $1 } # use ripgrep only for .py files
alias diff=delta

# File associations
alias -s csv=code
alias -s md=code
alias -s txt=nvim
alias -s {html,css,js,jsx,ts}=code

# ------------------------------------------------------- OTHER -------------------------------------------------------
function wttr { curl v2.wttr.in/$1 }                       # checks weather of desired location
function trimvid { ffmpeg -ss $1 -i $2 -to $3 -c copy $4 } # trim from $1 (HH:MM:SS) to $3 (HH:MM:SS);
                                                           # input file $2 to output file $4 (name of output must have proper extension)
alias yt=yt-dlp
alias gdl=gallery-dl
alias adbpull='adb pull -a -p'                             # keeps original timestamps for files
#!/bin/env bash

{
# Colors
RED="\e[0;31m"
GREEN="\e[0;32m"
BLUE="\e[0;34m"
CLEAR="\e[0m"
rsync_copy='rsync -avz --progress -h'

printf "Configuring $HOME directories"
mkdir $HOME/Backups
touch $HOME/Backups/.directory && printf "[Desktop Entry]\nIcon=folder-templates" > $HOME/Backups/.directory
mkdir $HOME/github/
touch $HOME/github/.directory && printf "[Desktop Entry]\nIcon=folder-git" > $HOME/github/.directory

printf "Installing ${BLUE$}pacman packages{CLEAR} from ./packages/pacman\n"
sudo pacman -Syyu --noconfirm - < ./packages/pacman

printf "${BLUE}Configuring shell${CLEAR}\n"
$rsync_copy ./zsh/ $HOME

printf "Installing ${BLUE}Oh My ZSH${CLEAR}\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

printf "Installing ${BLUE}Powerlevel10k theme${CLEAR}\n"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

printf "Installing ${BLUE$}zsh syntax highligthing{CLEAR}\n"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

printf "Installing ${BLUE$}zsh-completions{CLEAR}\n"
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

printf "Installing ${BLUE$}zsh-autosuggestions{CLEAR}\n"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

printf "Installing ${BLUE$}fzf-tab{CLEAR}\n"
git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab

}
<h3 align="center">bartq98's dotfiles :wrench: </h3>

Repository with my configuration files for Arch Linux and Windows 10.

- [Prerequarities](#prerequarities)
- [Installation](#installation)
- [Notes](#notes)
  - [commonly used shell shortcuts](#commonly-used-shell-shortcuts)
  - [github token configuration](#github-token-configuration)
  - [audio configuration for Linux](#audio-configuration-for-linux)
- [Additional resources and useful links](#additional-resources-and-useful-links)

## Prerequarities
It's not required to install all of listed applications.
List corresponds to core stuff that I use on my daily basis.

1. Operating Systems:
   1. Arch Linux
   2. Windows 10
2. KDE and i3wm (as desktop environment for Linux)
3. Z shell - zsh
4. Editors:
   1. Visual Studio Code
   2. neovim
5. docker and docker-compose (for both OS)

## Installation
Instructions below apply to (Arch) Linux only.

Just clone this repository:
```
git clone https://github.com/bartq98/dotfiles && cd dotfiles
```
and run script:
```
chmod +x setup_new_system.sh && ./setup_new_system.sh
```
This should install all necessarry packages & configure most basic applications.

## Notes

### commonly used shell shortcuts
  1. `Ctrl+P` - iterating throught previous commands
  2. `Alt+,` - iterating throught previous commands's arguments
  3. `Alt+.` - combination of both^
  4. `Ctrl+l` - clears terminal without removing existing buffer
  5. `fc` - can easily write long command in editor and execute it immedietly after closing editor.

### github token configuration
  1. Log into Github
  2. Go to `Developer Settings`
  3. Follow instructions from: [Caching your GitHub credentials in Git](https://docs.github.com/en/get-started/getting-started-with-git/caching-your-github-credentials-in-git)
  4. [Creating a personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)


### audio configuration for Linux
TBD

## Additional resources and useful links
- https://www.commandlinefu.com/commands/browse/sort-by-votes
- [*How to Yubikey: a configuration cheatsheet*](https://debugging.works/blog/yubikey-cheatsheet/)
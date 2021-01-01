## **.dotfiles & Linux Stuff**

Notes about efficient Linux use. I use **Manjaro** with **KDE** and most of dotfiles in this repo. is focused to this distro.
___
## Getting started

This repository has many configuration files (called *dotfiles*) of my daily workflow.

<br>

## Short list of recommended apps

**KDE:**
- **dolphin** (file explorer with embedded terminal)
- **konsole**

**Command-line utilities:**:
- **zsh** (better shell)
- **oh-my-zsh** (plugin manager for zsh)
- **[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)** (fish-like suggestions based on history)
- **powerlevel10k** (zsh theme)
- **z** (quickly jumping between most visited directories)
- **fzf** (for fuzzy file search, command history etc.)
- **ripgrep** (for fast searching through files)
- **exa** (ls replecament)
- **bat** (cat replecament with syntax colouring)

**Text editors and IDE's:**
- **Neovim** with **vim-plug** (terminal based editor)
- **Code - OSS** (GUI editor)

**Internet Browsers:**
- **Firefox**
- **Chromium**

**Documents:**
- **Xpdf** (try *-rv* parameters for dark documents)
- **LibreOffice**
- **Joplin** (markdown note-taking app)

**Misc:**
- fonts:
  - **Fira Code**
  - **Jet Brains Mono**
  - **JuliaMono**
___

## **Code - OSS**

<br>
To easy get access to marketplace from your application, you should edit your `/usr/lib/code/product.json` file and change `extensionsGallery` field to:

```JSON
  "extensionsGallery": {
    "serviceUrl": "https://marketplace.visualstudio.com/_apis/public/gallery",
    "cacheUrl": "https://vscode.blob.core.windows.net/gallery/index",
    "itemUrl": "https://marketplace.visualstudio.com/items"
  },

```
(more info [there](https://github.com/VSCodium/vscodium/issues/418#issuecomment-643664182))

<br>

Useful shortcuts:
- `Ctrl+P`
- `Ctrl+Shift+P`
- `Ctrl+,`
- `Ctrl+D`
- Alt+. (copy last command's argument)

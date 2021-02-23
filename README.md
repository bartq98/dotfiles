## *.dotfiles* *for* *Linux*

This repository contains *dotfiles* - configurations of my most often used applications. 

There is also some *tips&tricks* of Linux usage (especially of command line). I wrote this as a notes for myself, but If you have something worth to mention there - please tell me :wink:

___

## **Arch Linux**

### Installing packages from list

If you often install your favourite OS and want to quickly install your toolset the best way is list every package in text file and do this:

```bash
sudo pacman -Syu - < packageList.txt
```

## shell useful shortcuts

The best source to explore shell magic is [**commandlinefu**](https://www.commandlinefu.com/commands/browse/sort-by-votes).

Useful shortcuts:
- `Ctrl+P`
- `Ctrl+Shift+P`
- `Ctrl+,`
- `Ctrl+D`
- Alt+. (copy last command's argument)

Some useful commands:
  - `fc` - can easily write long command in editor (e.g neovim or nano) and execute it immedietly after closing vim.

___

## **Code - OSS**

I've been using Visual Studio Code for two years. The default version of  Arch Linux is **Code - OSS** which default extenstion gallery isn't Microsoft's Marketplace. 

To change it you can install [this](https://aur.archlinux.org/packages/code-marketplace/) or change it manually (solution below): 

1. Open `/usr/lib/code/product.json` in your favorite editor
2. Change `extensionsGallery` to this:
```JSON
"extensionsGallery": {
  "serviceUrl": "https://marketplace.visualstudio.com/_apis/public/gallery",
  "cacheUrl": "https://vscode.blob.core.windows.net/gallery/index",
  "itemUrl": "https://marketplace.visualstudio.com/items"
},
```
(more info [there](https://github.com/VSCodium/vscodium/issues/418#issuecomment-643664182))

---

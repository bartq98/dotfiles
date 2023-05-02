<h3 align="center">Visual Studio Code</h3>

Table of Contents:
- [**Initial setup**](#initial-setup)
- [**Code-OSS - Microsoft Marketplace as deafult extension gallery**](#code-oss---microsoft-marketplace-as-deafult-extension-gallery)

<br>

### **Initial setup**

Useful links:
- https://code.visualstudio.com/docs/editor/command-line
- https://code.visualstudio.com/docs/getstarted/settings

To install all of extensions mentioned in `extensions.txt` run this command:
```
cat extensionsList.txt | xargs -L1 code --install-extension
```


### **Code-OSS - Microsoft Marketplace as deafult extension gallery**

I use official Visual Studio Code provided with snap package which has official, biggest extension store.
It can be installed via snap (more there: https://snapcraft.io/code).

Previously I've been using a [Code - OSS](https://github.com/microsoft/vscode) - the default FOSS version of VSCode. As for Arch Linux it can be installed with [this](https://archlinux.org/packages/community/x86_64/code/) package. This version's default extenstion gallery **was not** Microsoft Marketplace.

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
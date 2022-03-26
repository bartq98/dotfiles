<h2 align="center"><b>dotfiles for Linux</b></h2>

This repository contains tips, guides and dotfiles for my setup.

I use **Arch Linux** and **Windows 10** to get work done.

___

### **Installing packages from list**

If you often install your favourite OS and want to quickly install your toolset the best way is list every package in text file and do this:

```bash
sudo pacman -Syyu - < packageList.txt
```

### **shell useful shortcuts**

The best source to explore shell magic is [**commandlinefu**](https://www.commandlinefu.com/commands/browse/sort-by-votes).

Useful shortcuts:
- `Ctrl+P`
- `Ctrl+Shift+P`
- `Ctrl+,`
- `Ctrl+D`
- Alt+. (copy last command's argument)

Some useful commands:
  - `fc` - can easily write long command in editor (e.g neovim or nano) and execute it immedietly after closing vim.

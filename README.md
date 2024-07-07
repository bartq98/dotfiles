<h3 align="center">bartq98's dotfiles</h3>

Repository with my configuration files for **Arch Linux** and **Windows 10**.

Table of Contents:
- [Installation](#installation)
- [Updating](#updating)


### Installation
Instructions below apply to Arch Linux only.

Just clone this repository:
```
git clone https://github.com/bartq98/dotfiles && cd dotfiles
```
and run script:
```
chmod +x setup_new_system.sh && ./setup.sh
```
This should install all necessary packages & configure most basic applications.

### Updating

If any changes occurred and you want to simply make them happen into operating system just run `./update.sh` script:

```
cd dotfiles
chmod +x ./setup.sh
./setup.sh
```
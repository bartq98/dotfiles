## Notes

### commonly used shell (bash/zsh) shortcuts
- `Ctrl+P` - iterating throught previous commands
- `Alt+,` - iterating throught previous commands's arguments
- `Alt+.` - combination of both^
- `Ctrl+l` - clears terminal without removing existing buffer
- `fc` - can easily write long command in editor and execute it immedietly after closing editor.

### GitHub token configuration
  1. Log into Github
  2. Go to `Developer Settings`
  3. Follow instructions from: [Caching your GitHub credentials in Git](https://docs.github.com/en/get-started/getting-started-with-git/caching-your-github-credentials-in-git)
  4. Follow instructions from: [Creating a personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)

### Additional resources and useful links
- [*Command Line Fu - most popular*](https://www.commandlinefu.com/commands/browse/sort-by-votes)
- [*How to Yubikey: a configuration cheatsheet*](https://debugging.works/blog/yubikey-cheatsheet/) (aimed for Arch Linux)

### Make KDE Connecect share clipboard all time
_Source: [userbase.kde.org/KDEConnect#Clipboard](https://userbase.kde.org/KDEConnect#Clipboard)_
1. Run these commands:
  ```
  adb -d shell pm grant org.kde.kdeconnect_tp android.permission.READ_LOGS;
  adb -d shell appops set org.kde.kdeconnect_tp SYSTEM_ALERT_WINDOW allow;
  adb -d shell am force-stop org.kde.kdeconnect_tp;
  ```
2. Stop the KDEConnect app from Android device
3. Make new pairing with your computer

### 💻 Dotfiles your computer.


Making shell scripts work from anywhere on your computer `export PATH=$PATH:<place_your_scripts_are>`

* I created my repo to store all my dotfiles like .bashrc, .zsrch, .vscode etc. In case I work on another machine or something happens on my machine, It is really easy for me to setup a new development machine.
---
 - I am currently using mac as my development machine so all the mac specific files are store in mac folder.
 ---
 Current Terminal looks like this.
 ![Terminal](/assets/terminal_look.png)
---
✅ I will be keeping this repo up to date when ever I change something in my dotfiles or when I decide to move to another operating system entirely.

[NVM](https://github.com/nvm-sh/nvm) install node version manager(mac/linux)
[NVM](https://github.com/coreybutler/nvm-windows) install node version manager(windows)


### Additonal links


[Bash wiki](https://wiki.bash-hackers.org/)



### Cleaning the MacOS


Spotify: Ensure that ~/Library/Application Support/Spotify/prefs has an entry of the form storage.size=2048 where the number is the max cache size in megabytes

Docker:

- Delete all containers: `docker rm -vf $(docker ps -a -q)`
- Delete all images `docker rmi -f $(docker images -a -q)`


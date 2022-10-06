### 💻 Dotfiles your computer.


* I created my repo to store all my dotfiles like .bashrc, .zsrch, .vscode etc. In case I work on another machine or something happens on my machine, It is really easy for me to setup a new development machine.

### Additonal links


[Bash wiki](https://wiki.bash-hackers.org/)



### Cleaning the MacOS


Spotify: Ensure that ~/Library/Application Support/Spotify/prefs has an entry of the form storage.size=2048 where the number is the max cache size in megabytes

Docker:

- Delete all containers: `docker rm -vf $(docker ps -a -q)`
- Delete all images `docker rmi -f $(docker images -a -q)`


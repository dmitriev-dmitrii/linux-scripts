
all: install-apt install-nvm system-max-watchers

install-apt:
	xargs -a apt.txt sudo apt reinstall -y

install-nvm:
	sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
	. ~/.nvm/nvm.sh
	
system-max-watchers:
	sudo sudo sysctl -w fs.inotify.max_user_watches=1048576
	sudo sysctl -p --system

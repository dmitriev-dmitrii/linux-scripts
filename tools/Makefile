
all: install-apt install-nvm system-max-watchers

install-apt:
	sudo apt install git wget curl -y
	
install-nvm:
	sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
	. ~/.nvm/nvm.sh
	
system-max-watchers:
	$ echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p


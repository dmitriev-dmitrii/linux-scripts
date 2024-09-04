
all: install-apt install-nvm

install-apt:
	xargs -a apt.txt sudo apt reinstall -y

install-nvm:
	sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
	. ~/.nvm/nvm.sh
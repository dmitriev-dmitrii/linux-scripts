
all: install-dev-tools install-nvm

install-dev-tools:
	xargs -a apt.txt sudo apt install -y

install-nvm:
	sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
	. ~/.nvm/nvm.sh
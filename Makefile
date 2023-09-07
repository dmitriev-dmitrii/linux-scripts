# apt
install-apps:
	xargs -a packages.txt sudo apt-get install -y

install-snap-apps:
	sudo snap install postman

# node js (nvm)
install-nvm:
	wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash	


install:
	sudo apt autoremove -y
	sudo apt upgrade -y
	sudo apt update -y
	install-apps
	install-snap-apps
	install-nvm
	sudo apt upgrade -y
	sudo apt autoremove -y

	

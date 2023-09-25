## apt
#install-apps:
#	xargs -a packages.txt sudo apt-get install -y
#
#install-snap-apps:
#	sudo snap install postman
#	sudo snap install telegram-desktop
#	sudo snap install webstorm


# node js (nvm)
install-nvm:
	wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
	. ${HOME}/.nvm/nvm.sh && nvm install --lts

# node js npm
install-npm:
	npm i yarn -g
	npm i pnpm -g
	npm i  @vue/cli -g
	npm i  @nestjs/cli -g
	npm i express-generator -g
	npm i  bun -g

#install:
#	sudo apt autoremove -y
#	sudo apt upgrade -y
#	sudo apt update -y
#	install-apps
#	install-snap-apps
#	install-nvm
#	sudo apt upgrade -y
#	sudo apt autoremove -y

	

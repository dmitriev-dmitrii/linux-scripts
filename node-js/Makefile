all:install-nvm  install-yarn config

# node js (nvm)
install-nvm:
	sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
	. ~/.nvm/nvm.sh && nvm install --lts

install-yarn:
	curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list


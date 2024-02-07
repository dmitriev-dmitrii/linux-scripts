all: install-nvm install-node install-npm

# node js (nvm)
install-nvm:
	sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
	. ~/.nvm/nvm.sh
# npm global
install-node:
	nvm install --lts
install-npm:
	npm i ts-node ts pnpm yarn bun -g --force
config:
	yarn config set network-timeout 600000 -g

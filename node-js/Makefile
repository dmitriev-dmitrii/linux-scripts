all: install-nvm install-npm

# node js (nvm)
install-nvm:
	sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
	. ~/.nvm/nvm.sh && nvm install --lts && nvm use --lts
# npm global
install-npm:
	npm i bun ts-node ts pnpm yarn -g --force

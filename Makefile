DOWNLOADS_PATH=downloads

create-folder:remove-folder
	mkdir ${DOWNLOADS_PATH} -p

remove-folder:
	rm ${DOWNLOADS_PATH} -f -r

install-node-js:
	include node-js/Makefile

#app from file app.txt
install-app:
	sudo pacman -Syu --no-confirm
	xargs -a app.txt sudo pacman -S --no-confirm

#install-docker :
#	git clone https://github.com/moby/moby ${DOWNLOADS_PATH}/docker-git
#	sudo pamac build ${DOWNLOADS_PATH}/docker-git -S --noconfirm
#	sudo groupadd docker --force
#	sudo usermod -aG docker $(USER)
#	sudo systemctl enable docker.service

#install-docker-desktop:
	#xargs -a docker-desktop-url.txt curl --output  ./${DOWNLOADS_PATH}/docker-desktop.pkg.tar.zst
	#sudo pacman -U --noconfirm ./${DOWNLOADS_PATH}/docker-desktop.pkg.tar.zst
    #sudo systemctl --user start docker-desktop

#install: create-folder install-app install-nvm install-npm remove-folder






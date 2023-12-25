DOWNLOADS_FOLDER_PATH = $(shell pwd)/downloads

export DOWNLOADS_FOLDER_PATH

all:create-folder install-git install-apps install-node-js remove-folder

create-folder:
	mkdir ${DOWNLOADS_FOLDER_PATH} -p

install-git:
	cd ./git && make

remove-folder:
	sudo rm ${DOWNLOADS_FOLDER_PATH} -f -r

install-apps:create-folder
	cd ./apps && make

install-node-js:
	cd ./node-js && make

install-docker:
	cd ./docker && make



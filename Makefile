#DOWNLOADS_FOLDER_PATH = $(shell pwd)/downloads

all: update-apt install-apps update-apt

update-apt:
	sudo apt update -y
	apt upgrade -y
	apt full-upgrade -y
	apt autoremove -y
	apt autoclean -y

install-apps:
	cd ./apps && make

install-docker:
	cd ./docker && make

install-docker-desktop:
	cd ./docker && install-docker-desktop
	



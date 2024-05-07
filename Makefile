all: update-apt dev-tools install-apps install-docker update-apt

update-apt:
	sudo apt update -y
	apt upgrade -y
	apt full-upgrade -y
	apt autoremove -y
	apt autoclean -y

install-dev-tools:
	cd ./dev-tools && make

install-apps:
	cd ./apps && make

install-docker:
	cd ./docker && make
	sudo reboot

# install-docker-desktop:
# 	#gavno 
# 	cd ./docker && install-docker-desktop 
	



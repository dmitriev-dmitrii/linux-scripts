all: update-apt install-tools install-apps install-docker clean-apt

update-apt:
	sudo apt update -y
	apt upgrade -y
	apt full-upgrade -y
clean-apt:
	apt autoremove -y
	apt autoclean -y

install-tools:
	update-apt
	clean-apt
	cd ./tools && make
	
install-apps:
	cd ./apps && make

install-docker:
	cd ./docker && make
	sudo reboot

# install-docker-desktop:
# 	#gavno 
# 	cd ./docker && install-docker-desktop 
	



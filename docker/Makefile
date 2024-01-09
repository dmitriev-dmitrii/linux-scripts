
all: install-preparation install-docker-desktop install-docker-permission
	
install-preparation:
	sudo apt update -y
	sudo apt upgrade -y
	--ignore-errors sudo apt remove -f -y --purge docker docker-engine docker.io 2>/dev/null
	--ignore-errors sudo apt remove -f -y --purge docker-desktop 
	--ignore-errors sudo rm -f -r $HOME/.docker/desktop 
	--ignore-errors sudo rm -f -r /usr/local/bin/com.docker.cli
	sudo apt full-upgrade -y
	sudo apt autoremove -y
	sudo apt autoclean -y

#install-docker:
#	sudo apt update
#	sudo apt install apt-transport-https ca-certificates curl software-properties-common
#	sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y
#	sudo apt-cache policy docker-ce
#	sudo apt install docker-ce -y
#	sudo apt install docker-compose -y

install-docker-desktop:	
	sudo apt -y install apt-transport-https ca-certificates software-properties-common
	wget https://desktop.docker.com/linux/main/amd64/docker-desktop-4.22.1-amd64.deb -P ./
	sudo apt install ./*.deb -y
	sudo rm -r -f  ./*.deb
	
install-docker-permission:
	sudo groupadd docker --force
	sudo usermod -aG docker $(USER)
	

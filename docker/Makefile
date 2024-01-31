
all: install-preparation  install-docker  install-permissions install-docker-desktop
	
install-preparation:
	sudo rm -rf /var/lib/docker
	sudo rm -rf /var/lib/containerd
	sudo apt-get purge -y docker-ce containerd.io docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras
	--ignore-errors sudo apt remove -f -y --purge docker-desktop
	--ignore-errors sudo apt remove -f -y --purge docker docker-engine docker.io 2>/dev/null
	--ignore-errors sudo apt update -y
	--ignore-errors sudo apt upgrade -y
	--ignore-errors sudo rm -f -r $HOME/.docker/desktop 
	--ignore-errors sudo rm -f -r /usr/local/bin/com.docker.cli
	sudo apt full-upgrade -y
	sudo apt autoremove -y
	sudo apt autoclean -y

install-docker:
	sudo rm -r -f  get-docker.sh
	curl -fsSL https://get.docker.com -o get-docker.sh
	sudo sh ./get-docker.sh --dry-run
	sudo rm -r -f  get-docker.sh
	sudo rm -rf /var/lib/containerd
	sudo apt-get -y install containerd.io docker-ce docker-ce-cli docker-buildx-plugin docker-compose-plugin

install-docker-desktop:
	wget https://desktop.docker.com/linux/main/amd64/docker-desktop-4.26.1-amd64.deb -P ./
	sudo apt reinstall ./*.deb -y
	sudo rm -r -f  ./*.deb

install-permissions:
	systemctl start docker
	sudo groupadd docker --force
	sudo usermod -aG kvm $(USER)
	sudo usermod -aG docker $(USER)
	sudo service docker restart
	docker --version
	docker compose version
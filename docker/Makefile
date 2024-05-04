
all: install-preparation  install-docker  install-permissions 
	
install-preparation:
	--ignore-errors	sudo rm -rf /var/lib/docker
	--ignore-errorssudo rm -rf /var/lib/containerd
	--ignore-errors	sudo apt-get purge -y docker-ce containerd.io docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras
	--ignore-errors sudo apt remove -f -y --purge docker-desktop
	--ignore-errors sudo apt remove -f -y --purge docker docker-engine docker.io 2>/dev/null
	--ignore-errors sudo apt update -y
	--ignore-errors sudo apt upgrade -y
	--ignore-errors sudo rm -f -r $HOME/.docker/desktop 
	--ignore-errors sudo rm -f -r /usr/local/bin/com.docker.cli
	--ignore-errors sudo apt full-upgrade -y
	--ignore-errors sudo apt autoremove -y
	--ignore-errors	sudo apt autoclean -y

install-docker:
	sudo rm -r -f  /etc/apt/sources.list.d/docker-ce.list
	sudo rm -r -f  get-docker.sh
	curl -fsSL https://get.docker.com -o get-docker.sh
	sudo sh ./get-docker.sh --dry-run
	sudo rm -r -f  get-docker.sh
	sudo rm -rf /var/lib/containerd
	sudo apt update -y
	sudo apt-get -y reinstall containerd.io docker-ce docker-ce-cli docker-buildx-plugin docker-compose-plugin
	docker --version
	docker compose version

install-docker-desktop:
	--ignore-errors sudo apt remove -f -y --purge docker-desktop
	--ignore-errors sudo rm -f -r $HOME/.docker/desktop 
	wget https://desktop.docker.com/linux/main/amd64/145265/docker-desktop-4.29.0-amd64.deb -P ./
	sudo apt reinstall ./*.deb -y
	sudo rm -r -f  ./*.deb

install-permissions:
	echo "install-permissions $(USER)"
	sudo groupadd docker --force
	sudo usermod -aG docker $(USER)
	newgrp docker
	sudo systemctl start docker
	sudo service docker restart
	

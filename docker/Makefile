
all: remove-docker install-docker install-permissions install-docker-mirrors

remove-docker: remove-docker-desktop
	 xargs -a apt.txt sudo apt-get remove -f -y --purge
	--ignore-errors	sudo rm -rf /var/lib/docker
	--ignore-errors sudo rm -rf /var/lib/containerd
	--ignore-errors sudo apt update -y
	--ignore-errors sudo apt upgrade -y
	--ignore-errors sudo rm -f -r $HOME/.docker/desktop 
	--ignore-errors sudo rm -f -r /usr/local/bin/com.docker.cli
	--ignore-errors sudo apt full-upgrade -y
	--ignore-errors sudo apt autoremove -y
	--ignore-errors	sudo apt autoclean -y
	--ignore-errors	sudo rm -r -f ~/.docker

install-docker:
	sudo rm -r -f  /etc/apt/sources.list.d/docker-ce.list
	sudo rm -r -f  get-docker.sh
	curl -fsSL https://get.docker.com -o get-docker.sh
	sudo sh ./get-docker.sh
	sudo rm -rf /var/lib/containerd
	sudo apt update -y
	sudo apt-get -y reinstall containerd.io docker-ce docker-ce-cli docker-buildx-plugin docker-compose-plugin docker-compose
	docker --version
	docker compose version

remove-docker-desktop:
	--ignore-errors docker context rm desktop-linux -f
	--ignore-errors	sudo apt remove docker-desktop -y
	--ignore-errors	rm -r $HOME/.docker/desktop
	--ignore-errors sudo rm /usr/local/bin/com.docker.cli
	--ignore-errors	sudo apt purge docker-desktop
	--ignore-errors	sudo apt autoclean -y
	--ignore-errors sudo apt autoremove -y
	--ignore-errors	sudo rm -r -f ~/.docker



install-docker-desktop: remove-docker-desktop
	--ignore-errors sudo apt remove -f -y --purge docker-desktop
	--ignore-errors sudo rm -f -r $HOME/.docker/desktop
	wget https://desktop.docker.com/linux/main/amd64/145265/docker-desktop-4.29.0-amd64.deb -P ./
	sudo apt reinstall ./*.deb -y
	sudo rm -r -f  ./*.deb

install-permissions:
	sudo groupadd docker --force
	sudo usermod -aG docker $(USER)
	sudo systemctl start docker
	sudo service docker restart
	
install-docker-mirrors:
	 sudo cp ./daemon.json /etc/docker/daemon.json


#all: update-apt install-apt-programs install-snap-programs install-deb-programs chrome-auto-update jetbrains.txt update-apt
all:install-jetbrains

update-apt:
	sudo apt update -y
	sudo apt upgrade -y
	sudo apt full-upgrade -y
	sudo apt autoremove -y
	sudo apt autoclean -y

install-apt-programs:
	xargs -a apt.txt sudo apt install -y 

install-snap-programs:
	sudo snap install telegram-desktop
	sudo snap install discord
	sudo snap install postman
	sudo snap install code --classic
	
install-deb-programs:
	wget -i deb.txt -P ./
	sudo dpkg -i ./*.deb
	sudo rm ./*.deb
	
chrome-auto-update:
	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
	sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

install-jetbrains:
	sudo rm /opt/jetbrains -rf
	sudo mkdir -p /opt/jetbrains
	wget -i jetbrains.txt -P ./
	sudo tar -xzf jetbrains-toolbox*.tar.gz
	sudo rm jetbrains-toolbox*.tar.gz
	sudo mv ./jetbrains-toolbox*/jetbrains-toolbox   /opt/jetbrains/jetbrains-toolbox
	sudo apt-get install -y libfuse2
	/opt/jetbrains/jetbrains-toolbox





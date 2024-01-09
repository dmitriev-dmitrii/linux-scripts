all: update-apt install-apt-programs install-snap-programs install-deb-programs chrome-auto-update update-apt 

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
	sudo snap install webstorm --classic
	sudo snap install phpstorm --classic
	
install-deb-programs:
	wget -i deb.txt -P ${DOWNLOADS_FOLDER_PATH} 
	sudo dpkg -i ${DOWNLOADS_FOLDER_PATH}/*.deb
	
chrome-auto-update:
	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
	sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'


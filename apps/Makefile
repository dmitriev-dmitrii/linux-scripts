
all: install-deb-programs install-script-apps

download-deb-apps:
	wget -i deb.txt -P ./

install-deb-programs: download-deb-apps
	sudo dpkg -i ./*.deb
	rm ./*.deb

install-scripts-dependencies:
	sudo apt install dirmngr ca-certificates software-properties-common apt-transport-https curl lsb-release -y

install-script-apps:install-scripts-dependencies webstorm phpstorm vs-code
	sudo apt update -y
	sudo apt install webstorm -y
	sudo apt install phpstorm -y
	sudo apt install code -y
	sudo apt install telegram -y


webstorm:
	curl -s https://s3.eu-central-1.amazonaws.com/jetbrains-ppa/0xA6E8698A.pub.asc | sudo apt-key add -
	echo "deb https://jetbrains-ppa.s3-website.eu-central-1.amazonaws.com bionic main" | sudo tee /etc/apt/sources.list.d/jetbrains-ppa.list > /dev/null

phpstorm:
	curl -s https://s3.eu-central-1.amazonaws.com/jetbrains-ppa/0xA6E8698A.pub.asc | gpg --dearmor | sudo tee /usr/share/keyrings/jetbrains-ppa-archive-keyring.gpg > /dev/null
	echo "deb [signed-by=/usr/share/keyrings/jetbrains-ppa-archive-keyring.gpg] http://jetbrains-ppa.s3-website.eu-central-1.amazonaws.com any main" | sudo tee /etc/apt/sources.list.d/jetbrains-ppa.list > /dev/null

vs-code:
	curl -fSsL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/vscode.gpg >/dev/null
	echo deb [arch=amd64 signed-by=/usr/share/keyrings/vscode.gpg] https://packages.microsoft.com/repos/vscode stable main | sudo tee /etc/apt/sources.list.d/vscode.list

telegram:
	sudo add-apt-repository ppa:atareao/telegram -y

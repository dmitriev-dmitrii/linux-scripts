
all: install-deb-programs install-script-apps

download-deb-apps:
	wget -i deb.txt -P ./

install-deb-programs: download-deb-apps
	sudo dpkg -i ./*.deb
	rm ./*.deb

install-scripts-dependencies:
	sudo apt install dirmngr ca-certificates software-properties-common apt-transport-https curl lsb-release -y

install-script-apps:install-scripts-dependencies vs-code
	sudo apt update -y
	sudo apt install code -y

vs-code:
	curl -fSsL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/vscode.gpg >/dev/null
	echo deb [arch=amd64 signed-by=/usr/share/keyrings/vscode.gpg] https://packages.microsoft.com/repos/vscode stable main | sudo tee /etc/apt/sources.list.d/vscode.list


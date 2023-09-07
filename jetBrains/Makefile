
download:
	wget -i https://download-cdn.jetbrains.com/toolbox/jetbrains-toolbox-2.0.3.17006.tar.gz
	
unpack:
	sudo mkdir jetbrains
	sudo mkdir jetbrains/jetbrains-toolbox
	sudo tar C jetbrains/jetbrains-toolbox -xzf jetbrains-toolbox*.tar.gz --strip-components 1
	sudo mv jetbrains-toolbox /opt
	
clean:	
	sudo rmdir -p --ignore-fail-on-non-empty jetbrains-toolbox 
	sudo rm -f jetbrains-toolbox*.tar.gz
	
install:
	clean
	download
	unpack
	clean

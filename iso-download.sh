#!/bin/bash



				(


echo "part 1: curl"

	echo "rescuezilla"
		cd -P /opt/iventoy/iso && curl -L -O https://github.com/rescuezilla/rescuezilla/releases/download/2.5.1/rescuezilla-2.5.1-64bit.noble.iso

	echo "hirenboot"
		cd -P /opt/iventoy/iso && curl -L -O https://www.hirensbootcd.org/files/HBCD_PE_x64.iso

	echo "ubcd"
		cd -P /opt/iventoy/iso && curl -L -O http://mirror.koddos.net/ubcd/ubcd539.iso


echo "part 2: quickget"


	echo "windows 11 NL"
		cd -P /opt/iventoy/iso && quickget --download windows 11 Dutch

	echo "linux mint 22"
		cd -P /opt/iventoy/iso && quickget --download linuxmint 22 cinnamon

	echo "windows 10 nl"
		cd -P /opt/iventoy/iso && quickget --download windows 10 Dutch

	echo "debian 12 net"
                cd -P /opt/iventoy/iso && quickget --download debian 12.10.0 netinst

	echo "windows 11 english"
                cd -P /opt/iventoy/iso && quickget --download windows 11 International

	echo "ubuntu 24"
                cd -P /opt/iventoy/iso && quickget --download ubuntu 24.10

	echo "windows 10 english"
                cd -P /opt/iventoy/iso && quickget --download windows 10 English

	echo "proxmox"
		cd -P /opt/iventoy/iso && quickget --download proxmox-ve 8.3-1

	echo "test debian 11"
		cd -P /opt/iventoy/iso && quickget --download debian 11.11.0 netinst

echo "part 3:log" 

            #/opt/inventoy/log is where the log gets saved, you can change it if you want.
				) 2>&1 | tee -a /opt/iventoy/log/$(date +"%d-%m-%Y---%T")-iso.log


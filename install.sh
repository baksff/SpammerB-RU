#!/bin/bash
clear

if [ -e  /usr/lib/sudo ];then
  if [ -e /usr/bin/apt-get ];then
    sudo apt-get update
    sudo apt-get upgrade -y
    sudo apt-get install python3 -y
    sudo cp ~/SpammerB-RU/SpammerB-RU.py /usr/bin/SpammerB-RU
    chmod +x /usr/bin/SpammerB-RU
  fi
else
  if [ -d /usr/bin ];then
    if [ -e /usr/bin/apt-get ];then
      apt-get update
      apt-get upgrade -y
      apt-get install python3 -y
      cp ~/SpammerB-RU/SpammerB-RU.py /usr/bin/SpammerB-RU
      chmod +x /usr/bin/SpammerB-RU
    fi
  fi
fi

if [ -d /data/data/com.termux/files/usr/bin ]; then
  pkg update
  pkg upgrade -y
  pkg install python3 -y
  cp ~/SpammerB-RU/SpammerB-RU.py /data/data/com.termux/files/usr/bin/SpammerB-RU
	chmod +x /data/data/com.termux/files/usr/bin/SpammerB-RU
fi

if [ -e  /usr/lib/sudo ];then
  if [ -e /usr/bin/yum ];then
    sudo yum update
    sudo yum upgrade -y
    sudo yum install python3 -y
    sudo cp ~/SpammerB-RU/SpammerB-RU.py /usr/bin/SpammerB-RU
    chmod +x /usr/bin/SpammerB-RU
  fi
else
  if [ -d /usr/bin ];then
    if [ -e /usr/bin/yum ];then
      yum update
      yum upgrade -y
      yum install python3 -y
      cp ~/SpammerB-RU/SpammerB-RU.py /usr/bin/SpammerB-RU
      chmod +x /usr/bin/SpammerB-RU
    fi
  fi
fi

if [ -e  /usr/local/bin/brew ];then
  brew install python3 -y
  cp ~/SpammerB-RU/SpammerB-RU.py /usr/local/bin/SpammerB-RU
  chmod +x /usr/local/bin/SpammerB-RU
fi

if [ -e  /usr/bin/apk ];then
  apk install python3 -y
  cp ~/SpammerB-RU/SpammerB-RU.py /usr/bin/SpammerB-RU
  chmod +x /usr/bin/SpammerB-RU
fi

pip install -r ~/SpammerB-RU/requirements.txt
SpammerB-RU

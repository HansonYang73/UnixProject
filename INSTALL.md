# Setting up the Homelab
- Raspberry Pi 4 Model B
- 124 GB Micro SD card
- Ethernet Cable
- Raspberry Pi Power Supply
- USB to Micro SD Card Reader

- Disk Imaging Tool: Raspberry Pi Imager (https://www.raspberrypi.com/software/)

1. Insert the Micro SD Card in the USB to Micro SD Card Reader
2. Insert the USB to Micro SD Card Reader into the computer that has downloaded Raspberry Pi Imager
3. In the Raspberry Pi Imager, choose Raspberry Pi OS (other) and select Raspberry Pi OS Lite (64-bit)
4. In the customization, Enable SSH and use Password Authentication
5. Select the Micro SD Card to flash the OS in
6. Remove the Micro SD Card and insert it into the Raspberry Pi
7. Power the Raspberry Pi and plug the ethernet cable into the Raspberry Pi that is connected to a Bell router


# Connecting to the homelab locally
1. Connect to your Bell modem dashboard (Usually http://192.168.2.1/)
2. Find your Raspberry Pi ip address
3. Go to a Linux OS that is connected on the same network as the Raspberry Pi
4. Download ssh (sudo apt update && sudo apt install -y openssh-server)
5. Create a pair of private-public key ("ssh-keygen")
6. Copy your public key to the homelab "ssh-copy-id user@ip"
7. Connect to the homelab "ssh user@ip"

# Changing sshd config file for more security (Shon add more stuff if i miss anything)
1. Download vim (sudo apt update && sudo apt install -y vim)
2. "vim /etc/ssh/sshd_config"
3. Change the port to number to 7363
4. Dont permit root login
5. Disable password authentication

# Setting up Tailscale for remote connection to the homelab
1. Download systemd-resolved (sudo apt update && sudo apt install -y systemd-resolved)


Containers:

-Docker(Better for isolation)


Permissions:

-The user that can access the server has full permissions but does not have root 
-This makes it so that we cant make any big mistakes or issues.


Additional:

-Vim

-Visual Studio Code

-SSH

-Tailscale: https://tailscale.com/kb/1031/install-linux

-resolvconf: apt install resolvconf




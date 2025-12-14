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
1. Connect to your Bell modem admin dashboard (Usually http://192.168.2.1/)
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

# Setting up remote connection to the homelab by using Tailscale (Mesh VPN)
1. Download systemd-resolved (sudo apt update && sudo apt install -y systemd-resolved)
2. Download tailscale (curl -fsSL https://tailscale.com/install.sh | sh)
3. Start up tailscale (sudo tailscale up)
4. Click on the link that gets outputed and login to your Tailscale account (or create one)
5. You can now see your tailscale ip address that can be used to connect remotely (tailscale ip)

# Connecting to the homelab remotely
On your linux computer:
1. Download ssh, systemd-resolved and tailscale
2. Start up tailscale and login to the same account to be connected in your Tailscale network
   or go in the [Tailscale admin dashboard](https://login.tailscale.com/admin/machines) and "Share..." your homelab to another account
3. Connect to the homelab: "ssh -p 7363 user@tailscaleIP"


# Website Setup
1. Go to porkbun and buy a cheap domain like we did unixhomelab.xyz
2. Forward port 80 of the homelab so that it can be accessed on the internet using your Bell modem admin dashboard
3. After going to the domain manager and clicking on the bottom for details of your domain
4. Click add record and add the public IP of the Raspberry Pi
5. You should now be able to access your website though the domain name.

# Autodeployement and CI/CD setup
1. Create a copy of our github repository
2. Change 
3. Use the provided Dockerfile to build an image that you will use to create your container with.
4. Install npm which is a package manager for nodejs : sudo apt install npm
5. Install Nodejs for htmlhint test: sudo apt install nodejs npm
6. Install htmlhint which will be used in our CI/CD tests : sudo npm install -g htmlhint
11. You can replace our html page with your own custom page. *Make sure there is only one because the Dockerfile uses a wildcard to locate the html file.
12. Copy our yml file inside .github and change the variables to make it work.
13. To implement CI/CD tests run htmlhint to tests your html page and then if everything is correct remake the docker to deploy it correctly with the updated html page.




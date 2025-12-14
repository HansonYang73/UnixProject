# OS:
We initially considered using Ubuntu Server OS because we heard from ChatGPT and online searches that it is great for hosting a website, as it also doesn’t have a desktop interface, which saves resources. But then we found out by using the Raspberry Pi Imager that there were OS that were built for the Raspberry Pi, so we decided to switch to the Raspberry Pi OS Lite, which also doesn’t have a desktop environment.

# Remote Connection:
To connect remotely to the homelab. We chose Tailscale because of its ease of use and security.

# Domain Buying
We used porkbun to buy a domain because it is cheap and it is what the teacher recommanded us.
I bought the domain unixhomelab.xyz because it was the cheapest. I also bought a hosting plan but I dont think I needed it at the end.

# Docker vs Proxmox:
Docker is a tool that allows for application containerization that share the same kernel. Its lightweight so its resource usage is very low.
In addition, it has a fast startup which is perfect for our one application. Proxmox is a is a virtualization platform that allows for virtual machines and LXC containers.
I has a stronger isolation then docker and it provides you with more space to work with. However, Proxmox is too heavy for our application since we want it to be lightweight 
for better preformance plus due to it being heavier it starts up slower.

# Web Server Choice
We chose apache because it was the one we were familier with more. We knew what configs to access and where everything was.
However, nginx would of probably been better due to its better preformance over all.

# Programming Language:
Bash

# Development Approach: 
We need to approach this project in an organized manner to be able to complete it well.
We will be dividing this project into multiple parts and only moving on when that part is done.
This way we won't have any confusion on what parts we did or did not do since we will be working on one part
till it is done. We hope to create a project that is clean and well developed by taking our time with certain parts if it is needed.

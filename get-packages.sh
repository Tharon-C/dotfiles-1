#!/usr/bin/env bash

apt update
apt install software-properties-common apt-transport-https wget

# Save apt-get’s installed location.
apt-get_PREFIX=$(apt-get --prefix)

# snap package manager
apt install snapd

# gpg2
apt install gnupg2

# Install `wget` with IRI support.
apt-get install wget --with-iri

# Dconf
apt-get install dconf-tools

# Node 
apt-get install libgmp3-dev
apt install curl
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
source $HOME/.nvm/nvm.sh
export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/}.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
source $HOME/.bashrc
nvm ls-remote && nvm install --lts
nvm use --delete-prefix v10.13.0 
chown -R $USER:$(id -gn $USER) /home/$USER/.config

# Virtual Box
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | apt-key add -
add-apt-repository "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"
sudo apt update
sudo apt install virtualbox-6.0

# Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Vim
 apt remove -y vim-tiny
 apt update
 apt install -y vim 

# openssh
apt-get install openssh-server
apt-get install openssh-client

# Brave
wget -O brave.deb https://laptop-updates.brave.com/latest/dev/ubuntu64 1.2k
dpkg -i brave.deb

# Chromium
apt install -y chromium-browser

# tmux
apt-get install tmux

# Vagrant

# # Font tools
# bramstein/webfonttools
# sfnt2woff
# sfnt2woff-zopfli
# woff2

# # CTF tools; see https://github.com/ctfs/write-ups.
# aircrack-ng
# bfg
# binutils
# binwalk
# cifer
# dex2jar
# dns2tcp
# fcrackzip
# foremost
# hashpump
# hydra
# john
# knock
# netpbm
# nmap
# pngcheck
# socat
# sqlmap
# tcpflow
# tcpreplay
# tcptrace
# ucspi-tcp # `tcpserver` etc.
# xpdf
# xz

# # Install other useful binaries.
# install ack
# exiv2
# git
# git-lfs
# imagemagick --with-webp
# lua
# lynx
# p7zip
# pigz
# pv
# rename
# rlwrap
# ssh-copy-id
# tree
# vbindiff
# zopfli

# # Snaps
# VS Code
snap install vscode --classic

# Slack
snap install slack --classic

# Hugo
snap install hugo

# Docker
snap install docker

# npm packages
# npx
npm install -g npx

# Gatsby
npm install -g gatsby-cli

# Remove outdated versions from the cellar.
apt clean
 
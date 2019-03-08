# #!/usr/bin/env bash

apt update
apt install software-properties-common apt-transport-https wget

# Save apt-get’s installed location.
apt-get_PREFIX=$(apt-get --prefix)

# snap package manager
apt install snapd

# Install `wget` with IRI support.
apt-get install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
# gnupg

# Node 
apt-get install libgmp3-dev
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
source $HOME/.nvm/nvm.sh
nvm ls-remote && nvm install --lts

# Docker 
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian stretch stable"
apt update && sudo apt install -fy docker-ce
usermod -aG docker $USER

# Docker Compose
curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
mkdir -p ~/.zsh/completion
curl -L https://raw.githubusercontent.com/docker/compose/1.21.2/contrib/completion/zsh/_docker-compose > ~/.zsh/completion/_docker-compose

# Virtual Box
add-apt-repository -y "deb http://download.virtualbox.org/virtualbox/debian stretch contrib"
curl -L https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo apt-key add -
apt-get update && sudo apt-get install -yf virtualbox-5.1

# Java 
echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | sudo tee /etc/apt/sources.list.d/webupd8team-java.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | sudo tee -a /etc/apt/sources.list.d/webupd8team-java.list
apt adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
apt update
apt install oracle-java8-installer

# Vim
git clone https://github.com/vim//vim.git
make vim/src
make install

# openssh
apt-get install openssh-server
apt-get install openssh-client

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

# Firefox
snap install firefox

# Slack
snap install slack --classic

# Hugo
snap install hugo

# Hugo
snap install hugo

# npm packages
# npx
npm install -g npx

# Elm
npm install -g elm

# Gatsby
npm install -g gatsby-cli

# Remove outdated versions from the cellar.
# cleanup
 
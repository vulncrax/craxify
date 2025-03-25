#!/bin/bash

BOLD=$(tput bold)
YELLOW=$(tput setaf 3)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
NORMAL=$(tput sgr0)
#COLORS
RED="\e[31m"
GREEN="\033[1;32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[95m"
CYAN="\e[36m"
DEFAULT="\e[39m"
BOLD="\e[1m"
NORMAL="\e[0m"
clear
printf "${BOLD}${CYAN}##########################################################\n"
printf "##### Welcome to the Craxify dependency installer #####\n"
printf "##########################################################\n\n${NORMAL}"
sudo apt-get -y update
printf "${BOLD}${MAGENTA}Installing programming languages and essential packages\n${NORMAL}"
sudo chmod +x craxify
sudo mv craxify /usr/local/bin
sudo apt-get install -y python3-pip  golang cargo html2text whatweb theharvester nmap dirsearch sqlmap cargo subjack python3 python3.13-venv pipx cmake
python3 -m venv $HOME/.venv
source $HOME/.venv/bin/activate
sudo mkdir $HOME/tools
cd $HOME/tools

sudo git clone https://github.com/ameenmaali/urldedupe.git
cd urldedupe
sudo cmake CMakeLists.txt
sudo make
sudo mv urldedupe /usr/local/bin/

cd $HOME/tools
sudo git clone https://github.com/vulncrax/payloads
sudo git clone https://github.com/s0md3v/Corsy.git
cd $HOME/tools/Corsy
pip install -r requirements.txt
cd
pipx install uro
sudo mv $HOME/.local/share/pipx/venvs/uro/bin/uro /usr/local/bin

pip install urless
sudo cp $HOME/.venv/bin/urless /usr/local/bin


printf "${BOLD}${MAGENTA}Installing GO tools\n${NORMAL}"


go install -v github.com/owasp-amass/amass/v4/...@master
go install -v github.com/michenriksen/aquatone@latest
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install -v github.com/hakluke/hakrawler@latest
go install -v github.com/tomnomnom/anew@latest
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
go install -v github.com/lc/gau@latest
go install -v github.com/tomnomnom/gf@latest
go install -v github.com/tomnomnom/qsreplace@latest
go install -v github.com/projectdiscovery/katana/cmd/katana@latest
go install -v github.com/tomnomnom/waybackurls@latest
go install -v github.com/hahwul/dalfox/v2@latest
go install -v github.com/projectdiscovery/urlfinder/cmd/urlfinder@latest
go install -v github.com/PentestPad/subzy@latest
go install -v github.com/tomnomnom/assetfinder@latest
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest
go install -v github.com/projectdiscovery/cdncheck/cmd/cdncheck@latest
cd

sudo mv go/bin/* /usr/local/bin

sudo mkdir -p ~/.gf
cd ~/.gf
sudo git clone https://github.com/tomnomnom/gf
sudo mv gf/* .
sudo rm -rf gf
sudo git clone https://github.com/coffinxp/GFpattren.git
sudo mv $HOME/.gf/GFpattren/* $HOME/.gf




echo 'source $HOME/.gf/gf-completion.bash' >> ~/.bashrc
echo 'source $HOME/.gf/gf-completion.zsh' >> ~/.zshrc



printf "${BOLD}${YELLOW}Installation completed successfully! Run ${BOLD}${CYAN} craxify -h ${BOLD}${YELLOW} for help.\n${NORMAL}"


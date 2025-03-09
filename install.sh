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
sudo apt-get install -y python3-pip  golang cargo html2text whatweb theharvester nmap dirsearch sqlmap cargo subjack
sudo mkdir $HOME/tools
cd $HOME/tools
sudo git clone https://github.com/s0md3v/Corsy.git
cd $HOME/tools/Corsy
pip install -r requirements.txt
cd


printf "${BOLD}${MAGENTA}Installing GO tools\n${NORMAL}"
declare -a GO_TOOLS=(
  "github.com/OWASP/Amass/v3/..."
  "github.com/michenriksen/aquatone"
  "github.com/projectdiscovery/subfinder/v2/cmd/subfinder"
  "github.com/hakluke/hakrawler"
  "github.com/tomnomnom/anew"
  "github.com/projectdiscovery/httpx/cmd/httpx"
  "github.com/projectdiscovery/notify/cmd/notify"
  "github.com/projectdiscovery/nuclei/v2/cmd/nuclei"
  "github.com/lc/gau"
  "github.com/tomnomnom/gf"
  "github.com/tomnomnom/qsreplace"
  "github.com/hahwul/dalfox/v2"
  "github.com/tomnomnom/hacks/html-tool"
  "github.com/tomnomnom/waybackurls"
  "github.com/projectdiscovery/urlfinder/cmd/urlfinder"
  "github.com/tomnomnom/qsreplace"
  "github.com/projectdiscovery/katana/cmd/katana"
)

for tool in "${GO_TOOLS[@]}"; do
  printf "${CYAN}Installing $(basename $tool)\n${NORMAL}"
  go install "$tool@latest"
  sudo cp "$HOME/go/bin/$(basename $tool)" /usr/local/bin/
done

echo 'source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.bashrc
sudo cp -r ~/go/src/github.com/tomnomnom/gf/examples ~/.gf

printf "${BOLD}${YELLOW}Installation completed successfully! Run ${BOLD}${CYAN} craxify -h ${BOLD}${YELLOW} for help.\n${NORMAL}"



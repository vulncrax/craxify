
<h1 align="center">
  <br>
  <a href="https://github.com/vulncrax/craxify"><img src="https://github.com/vulncrax/assets/blob/main/transparent.png" alt="Craxify" style="width:50%; height:400px;"></a>
  <br>
  Craxify <br> An Automated Bug Bounty Reconnaissance Tool.
  <br>
</h1>



<hr>

> Craxify is an automation tool designed to streamline bug bounty reconnaissance. It simplifies the process of gathering subdomains, filtering active domains, fingerprinting web technologies, and finding endpoints, JS files, and potential misconfigurations

<br>

## Features
- **Subdomain Enumeration**: Uses `subfinder` to find subdomains and `httpx` to filter active ones.
- **Domain Resolution**: Resolves subdomains to IPs using `dnsx`.
- **Technology Identification**: Identifies web technologies with `whatweb`.
- **URL Collection**: Aggregates URLs with `waybackurls`, `gau`, `katana`, and more.
- **Endpoint Discovery**: Filters URLs for sensitive files, such as `.json`, `.db`, and `.config`.
- **JavaScript File Detection**: Extracts `.js` files for further analysis.
- **CORS Misconfiguration Check**: Uses `Corsy` and `nuclei` to detect misconfigurations.

# Installation
1. Clone the repository:  
```bash
   git clone https://github.com/vulncrax/craxify.git
   cd craxify
   bash install.sh
```

**TARGET OPTIONS**
 
| Parameter | Description |
|------|-------------|
| -h | Help |
| -d | Target domian |
| -c | contact  |

# Usage

  ```console

┌──(root@vulncrax)-[~/craxify]
└─# craxify -h
Usage: /usr/local/bin/craxify -d <domain>
Options:
  -d <domain>   Specify the target domain
  -h            Show this help message
  -c            Contact & Donate (Buy Me a Coffee)
```

```console

     ______                _ ____     
    / ____/________ __  __() __/_  __
   / /   / ___/ __ ` |/_ / / /_/ / / /   Author: Vulncrax
  / /___/ /  / /_/ />  </ / __/ /_/ /    https://www.youtube.com/@vulncrax 
  \____/_/   \__,_/_/|_/_/_/  \__, /  
                           /____/   
                  

✘ Target  https://vulnweb.com 

[] Finding subdomains

rest.vulnweb.com
testaspnet.vulnweb.com
restasp.vulnweb.com
www.testasp.vulnweb.com
testphp.vulnweb.com
tetphp.vulnweb.com
test.php.vulnweb.com
blogger.com.vulnweb.com
www.test.php.vulnweb.com
test.vulnweb.com
testaps.vulnweb.com
httptestaspnet.vulnweb.com
odincovo.vulnweb.com
edu-rost.ruwww.vulnweb.com
testapsnet.vulnweb.com
ttestphp.vulnweb.com
testap.vulnweb.com
www.vulnweb.com
www.testphp.vulnweb.com
virus.vulnweb.com
www.virus.vulnweb.com
viruswall.vulnweb.com
testaspx.vulnweb.com
testasp.vulnweb.com
testhtml5.vulnweb.com
5cwww.vulnweb.com
antivirus1.vulnweb.com
edu-rost.rutestasp.vulnweb.com
[] Filtering active subdomains...

http://rest.vulnweb.com
http://www.vulnweb.com
http://testhtml5.vulnweb.com
http://testphp.vulnweb.com
http://testasp.vulnweb.com
[] Resolving domains to IPs

testasp.vulnweb.com
www.vulnweb.com
testphp.vulnweb.com
testhtml5.vulnweb.com
rest.vulnweb.com
[] Identifying web technologies...

http://testasp.vulnweb.com [200 OK] ASP_NET, Cookies[ASPSESSIONIDQSRSSDTS], Country[UNITED STATES][US], HTTPServer[Microsoft-IIS/8.5], IP[44.238.29.244], Microsoft-IIS[8.5], Title[acuforum forums], X-Powered-By[ASP.NET]
http://www.vulnweb.com [200 OK] Country[UNITED STATES][US], HTTPServer[nginx/1.19.0], IP[44.228.249.3], Title[Acunetix Web Vulnerability Scanner - Test websites], nginx[1.19.0]                                                                                                                          
http://rest.vulnweb.com [200 OK] Apache[2.4.25], Country[UNITED STATES][US], HTML5, HTTPServer[Debian Linux][Apache/2.4.25 (Debian)], IP[18.215.71.186], Meta-Author[Omer Citak], PHP[7.1.26], Title[Invicti Vulnerable REST API], X-Powered-By[PHP/7.1.26]
ERROR Opening: http://testhtml5.vulnweb.com - Hostname not known: testhtml5.vulnweb.com
http://testphp.vulnweb.com [200 OK] ActiveX[D27CDB6E-AE6D-11cf-96B8-444553540000], Adobe-Flash, Country[UNITED STATES][US], Email[wvs@acunetix.com], HTTPServer[nginx/1.19.0], IP[44.228.249.3], Object[http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0][clsid:D27CDB6E-AE6D-11cf-96B8-444553540000], PHP[5.6.40-38+ubuntu20.04.1+deb.sury.org+1], Script[text/JavaScript], Title[Home of Acunetix Art], X-Powered-By[PHP/5.6.40-38+ubuntu20.04.1+deb.sury.org+1], nginx[1.19.0]
[] Running waybackurls
```

## Example Usage

```bash
craxify -d vulnweb.com
```

## Dependencies


- [Nuclei](https://github.com/projectdiscovery/nuclei)
- [httpx](https://github.com/projectdiscovery/httpx)
- [Subfinder](https://github.com/projectdiscovery/subfinder)
- [Katana](https://github.com/projectdiscovery/katana)
- [Subzy](https://github.com/LukaSikic/subzy)
- [GAU](https://github.com/lc/gau)
- [URLFinder](https://github.com/pingc0y/URLFinder)
- [Corsy](https://github.com/s0md3v/Corsy)
- [Hakrawler](https://github.com/hakluke/hakrawler)
- [WhatWeb](https://github.com/urbanadventurer/WhatWeb)
- [Uro](https://github.com/s0md3v/uro)
- [Dnsx](https://github.com/projectdiscovery/dnsx)
- [Urldedupe](https://github.com/ameenmaali/urldedupe)
- [Urless](https://github.com/xnl-h4ck3r/urless)
- [Waybackurls](https://github.com/tomnomnom/waybackurls)

  <p align="center">
<img src="https://github.com/user-attachments/assets/9ec3fed0-45ff-4cb3-988c-f8cd66e85082">
</p>



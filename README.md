# Craxify

**Craxify** is an automation tool designed to streamline bug bounty reconnaissance. It simplifies the process of gathering subdomains, filtering active domains, fingerprinting web technologies, and finding endpoints, JS files, and potential misconfigurations.

## Features
- **Subdomain Enumeration**: Uses `subfinder` to find subdomains and `httpx` to filter active ones.
- **Domain Resolution**: Resolves subdomains to IPs using `dnsx`.
- **Technology Identification**: Identifies web technologies with `whatweb`.
- **URL Collection**: Aggregates URLs with `waybackurls`, `gau`, `katana`, and more.
- **Endpoint Discovery**: Filters URLs for sensitive files, such as `.json`, `.db`, and `.config`.
- **JavaScript File Detection**: Extracts `.js` files for further analysis.
- **CORS Misconfiguration Check**: Uses `Corsy` and `nuclei` to detect misconfigurations.

## Installation
1. Clone the repository:  
   ```bash
   git clone https://github.com/yourusername/craxify.git
   cd craxify

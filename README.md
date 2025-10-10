# Website Info Crack 🌐

A simple yet powerful Bash script to quickly gather essential information about any website directly from your terminal.

![Screenshot of Script Output](https://i.imgur.com/example.png)  ---

## ✨ Features

-   **IP Lookup:** Fetches both **IPv4** and **IPv6** addresses.
-   **WHOIS Details:** Provides full or summarized WHOIS records for a domain.
-   **Uptime Check:** Checks if a website is up or down using HTTP status codes.
-   **Speed Test:** Measures the total server response time.
-   **Two Modes:**
    -   **Interactive Mode:** A user-friendly menu to perform checks individually.
    -   **Single-Run Mode:** Get all information at once by passing a domain as an argument.
-   **User-Friendly Output:** Color-coded output for better readability.

---

## 🔧 Dependencies

Make sure you have the following command-line tools installed before running the script:

-   `curl`
-   `dig` (usually part of `dnsutils` or `bind-tools`)
-   `whois`
-   `bc` (for speed evaluation)

You can install them on Debian/Ubuntu using:
```bash
sudo apt update && sudo apt install curl dnsutils whois bc -y
```

---

## 🚀 Installation & Usage

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/f4rdinn/web_info-by__f4ardin.git
    cd your-repo-name

    chmod +x web-info.sh

        ./web-info.sh
       

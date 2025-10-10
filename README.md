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
    git clone [https://github.com/your-username/your-repo-name.git](https://github.com/your-username/your-repo-name.git)
    cd your-repo-name
    ```

2.  **Make the script executable:**
    ```bash
    chmod +x web-info.sh
    ```

3.  **Run the script:**

    -   **For Interactive Mode (with menu):**
        ```bash
        ./web-info.sh
        ```
        Then, enter a domain and choose from the menu options.

    -   **For Single-Run Mode (get all info at once):**
        ```bash
        ./web-info.sh example.com
        ```

---

## 📜 License

This project is licensed under the MIT License. See the `LICENSE` file for details.

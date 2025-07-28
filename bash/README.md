# 🧪 netscan.sh

A simple Bash script to scan a local subnet for active hosts using `ping`.

---

## ⚙️ Description

`netscan.sh` is a lightweight network scanner that checks which hosts are online in a given subnet by sending ICMP echo requests (pings). Useful for quick assessments in lab environments or local networks.

---

## 🛠 Requirements

- Linux or macOS
- `bash` shell
- `ping` utility

---

## ▶️ Usage

```bash
bash netscan.sh 192.168.1


Scanning subnet 192.168.1.0/24...
Host 192.168.1.1 is online
Host 192.168.1.5 is online
Host 192.168.1.42 is online
Done.

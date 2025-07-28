# 🔓 passwordbuster.py

A Python3 script that performs a dictionary-based brute-force attack to recover salted and hashed passwords stored in a user account file.

---

## 🧠 Purpose

This script demonstrates how **dictionary attacks** work on password files that use **salted SHA-512 hashes** — a common format found in Unix-like systems (e.g., `/etc/shadow`).

Useful for learning:
- Password hashing mechanisms
- Salt usage
- Cracking fundamentals

---

## 🛠️ Requirements

- Python 3.x
- `passwords.txt` — A dictionary wordlist (e.g., rockyou.txt)
- `useraccounts.txt` — A file with username:salted-hash in the format:  

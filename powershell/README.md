# 🛡️ ciphercrack.ps1

A PowerShell script designed to assist in manually cracking Caesar cipher-encrypted messages. The script allows a user to iteratively try different rotation key values and view the decrypted output.

---

## 🔐 What It Does

- Prompts the user to input a filename containing a Caesar-encrypted message
- Iteratively applies rotation shifts to attempt decryption
- Highlights the output and provides a loop for user-driven cracking attempts
- Gives a helpful hint after 3 failed attempts

---

## 🛠️ Requirements

- Windows PowerShell or PowerShell Core
- A text file containing the encrypted message

---

## 📦 Features

- Uppercase and lowercase alphabet support
- Preserves non-alphabetic characters (punctuation, spaces, etc.)
- Colored output for readability
- Friendly retry logic with hints

---

## ▶️ Usage

### 🔹 1. Save your encrypted message in a text file (e.g., `message.txt`):

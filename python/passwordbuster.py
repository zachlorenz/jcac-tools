#!/usr/bin/env python3
import hashlib

def check_password(hashed_password, dictionaryWord):
	passwordData = hashed_password.split('$')
	salt = passwordData[2]
	password = passwordData[3]
	hashed_dictionaryWord = (hashlib.sha512(salt.encode() + dictionaryWord.encode()).hexdigest())
	
	if password == hashed_dictionaryWord:
		return True
	else:
		return False 
		
strFilename = 'passwords.txt'
fDictionaryFile = open(strFilename, 'r')
fAcctFile = open("useraccounts.txt", 'r')
# Change txt file to current users
for userAcct in fAcctFile:
    userAcct = userAcct.strip('\n')
    lstAcctDetails = list(userAcct.split(":"))
    strUserName = lstAcctDetails[0]
    strSaltedPwd = lstAcctDetails[1]

    print(strUserName + "\t:   ", end="",flush=True)

    fDictionaryFile.seek(0)
    passwordFound = False
    for dictionaryWord in fDictionaryFile:
        dictionaryWord = dictionaryWord.strip()
        if check_password(strSaltedPwd, dictionaryWord):
            passwordFound = True
            print(dictionaryWord, end="", flush=True)
            break
    if passwordFound:
        print("")
    else:
        print("**Password not found**")
fAcctFile.close()
fDictionaryFile.close()

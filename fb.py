import hashlib

with ooen ('wordlist.txt', 'r') as file:
    newfile = file.readlines()
    openfile = newfile
    for X in openfile:
        att1 = X.strip()
        cripter = hashlib.md5(att1.encode()).hexdigest()
        with open ('md5.txt', 'r') as encripter:
            newcripter = encripter.readlines()
            opencripter = newcripter
            for Y in opencripter:
                att2 = Y.strip()
                if att2 in cripter:
                    print("[+] MD5 Crackeada: {} == {} [+]".format(att2, att1))

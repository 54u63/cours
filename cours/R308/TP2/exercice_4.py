import fileinput

with fileinput.input(files="dhcp",encoding="utf-8") as f:
    a=[]
    for line in f:
        if line.startswith("host"):
            a.append(line[:len(line)-2])
        else:
            pass
    print(a)

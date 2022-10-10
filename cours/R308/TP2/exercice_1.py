a=dict()
a["os"]="linux"
a["GPU"]="GTX 1060"
a["VRAM"]="6GDDR6"
a["RAM"]="16Go Corsair"
a["CPU"]="I5 55000k"

print("#"*16+"Q2"+"#"*16)
print("recuperation de la valeur de RAM : ", a.get("RAM"))
print("#"*16+"Q3"+"#"*16)
for b in a.items():
    print(b)
print("#"*16+"Q4"+"#"*16)
print("#"*13+"clefs"+"#"*13)
for b in a.keys():
    print(b)
print("#"*12+"valeurs"+"#"*12)
for b in a.values():
    print(b)


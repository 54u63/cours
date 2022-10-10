liste=["lundi","mardi","mercredi","jeudi","vendredi","samedi","dimanche"]
print("liste de depart ->", liste)
print("#"*16+"exercice 1"+"#"*16)
copie=liste[:]
copie.pop(len(copie)-1)
copie.pop(len(copie)-1)
print(copie)

print("#"*16+"exercice 2"+"#"*16)
copie.append("samedi")
copie.append("dimanche")
print(copie)
print("#"*16+"exercice 3"+"#"*16)
print(copie[3:5])
print("#"*16+"exercice 4"+"#"*16)
print(copie[::-1])
print("#"*16+"exercice 5"+"#"*16)
print(sorted(copie))
print("#"*16+"exercice 6"+"#"*16)
copie_pair=[]
copie_impair=[]
for i in range(len(copie)):
    if i%2==0:
        copie_pair.append(copie[i])
    else:
        copie_impair.append(copie[i])
copie_impair=sorted(copie_impair,reverse=True)
final=[]
for i in range(len(copie_pair)):
    try:
        final.append(copie_pair[i])
        final.append(copie_impair[i])
    except IndexError:
        final.append(copie_pair[i])
print(final)
print("#"*16+"exercice 7"+"#"*16)
print(";".join(copie))

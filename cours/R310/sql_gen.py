stri="INSERT INTO `poursuiteEtude`(lyceen,ecole) VALUES ("
lyceen=["216",'90',"126","36","189","54","171","90"]
ecole=["MPSI MTP","IUT INFO MTP","IUT MMI BZ","NULL","BTS SIO MTP","IUT RT VALENCE","MPSI MTP","BTS SIO MTP"]
for i in range(len(lyceen)-1):
    newstr=""
    newstr+=stri
    newstr+=f"{lyceen[i]},"
    newstr+=f"{ecole[i]});"
    print(newstr)


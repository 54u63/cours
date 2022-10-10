import fileinput
import json
class Database:
    def __init__(self):
        self.hosts=[]
        self.patern={}
    def load(self,filename):
        with fileinput.input(files=filename,encoding="utf-8") as f:
            self.fileContent=[]
            for line in f:
                if line.startswith("host"):
                    self.fileContent.append(line[:len(line)-2])
                else:
                    pass 
    def dump(self):
        def parse(string):
            i=0
            while string[i]!="{":
                i+=1
            j=i
            while string[j-5:j]!="host":
                j-=1
            hostname=string[j+1:i-1]
            k=i;
            while string[k]!=";":
                k+=1
            hardware=string[k-17:k]
            return hostname, hardware
        a=dict()
        for line in self.fileContent:
            hostname=parse(line)[0]
            hardware=parse(line)[1]
            a[hostname]=hardware
        return a

class dhcpHost:
        def __init__(self,hostname,hardware):
            self.hostname=hostname
            self.hardware=hardware
        def __str__(self):
            str=self.hostname+" {hostname: "+self.hostname+"; hardware: "+self.hardware+" }:" 
            return str

db=Database()
db.load("dhcp")
dump=db.dump()
host_list=[]
for i in dump.items():
    host=dhcpHost(i[0],i[1])
    host_list.append(host)
for host in host_list:
    print(host[i])

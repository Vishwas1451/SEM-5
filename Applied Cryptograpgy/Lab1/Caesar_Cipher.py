plain_text="emVyb0NURntrZTNwXzFuX20xbmRfYmFzZTY0XzFzX2VzczNudDFhbF9mMHJfaDRja2VyNX0=";key=10
l=[]
for i in plain_text:
     l.append(i)
for i in range(0,len(l)):
    j=ord(l[i])
    j=j+key
    if(j>90):
        h=j-90
        j=64+h
    l[i]=chr(j)
print("AFTER ENCRYPTION:")
def func(a):
    s=""   
    for i in a:
        s=s+i  
    return s  
print(func(l))          
d=[]
for i in plain_text:
     d.append(i)    
for i in range(0,len(d)):
    j=ord(d[i])
    j=j-key
    if(j<65):
        h=65-j
        j=91-h
    d[i]=chr(j)
print("AFTER DECRYPTION") 
print(func(d))

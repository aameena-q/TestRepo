#input 6 integers ,ask for integer and check times of occurence
a=[]
n=0
count=0
count2=0
while count<6:
    a.append(int(input("enter")))
    count+=1

b=int(input("enter target integer"))



while count2<len(a):
    if a[count2]==b:
        n=n+1
    count2=count2+1
print("occurence",n)
        
  
    
    

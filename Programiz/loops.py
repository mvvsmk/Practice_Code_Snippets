
number = int(input("Enter a number :"))

count = 10
while count>0:
    print(number,"X",count,"=",count*number)
    count -=1

sum = 0 
for count in range(1,101):
    sum+=count

print("Sum of the first 100 integers is :", sum)

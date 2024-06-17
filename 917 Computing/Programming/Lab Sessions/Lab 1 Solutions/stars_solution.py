"""
This program shoudl draw a triangle of stars
"""
#Using for loops
for i in range(0,5):
    str = ""
    for j in range(0,i+1):
        str += "*"
    print(str)
    
print("=========")
    
for i in range(0,5):
    str = ""
    for j in range(0,5-i):
        str += "*"
    print(str)

print("=========")
#Using while loops
counter = 1
while counter < 6:
    stars = 0
    str = ""
    while stars < counter:
        str += "*"
        stars += 1
    print(str)
    
    counter +=1 

print("=========")

counter = 5
while counter > 0:
    stars = counter
    str = ""
    while stars > 0:
        str += "*"
        stars -= 1
    print(str)
    
    counter -=1 
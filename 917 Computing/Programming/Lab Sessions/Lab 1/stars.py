"""
This program shoudl draw a triangle of stars
"""
#Your code here
for i in range(1, 6):
    # print(i)
    print('*' * i)
print('\n')

index = 1
while index < 6:
    print('*' * index)
    index += 1
print('\n')

for i in range(5, 0, -1):
    print('*' * i)
print('\n')

index = 5
while index > 0:
    print('*' * index)
    index -= 1
"""
This progam creates an interactive number of stars
"""

#Define a method
def draw_stars(rows, increasing=True):
    #Your code here
    if increasing:
        for i in range(1, rows + 1):
            print('*' * i)
    else:
        for i in range(rows, 0, -1):
            print('*' * i)
    
#Now ask the user for the number of rows
rows = int(input("How many rows of stars should I print? "))

#Now ask the user if the rows should be increasing
answer = input("Should the rows be increasing or decreasing? ")

if answer.lower() == 'increasing':
    draw_stars(rows, True)
elif answer.lower() == 'decreasing':
    draw_stars(rows, False)
else:
    print("Sorry, wrong answer!")
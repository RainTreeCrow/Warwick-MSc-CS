"""
This program is a simple guessing game
"""
#Import the random integer function
from random import randint

def random_number(level):
    if level == 1:
        return randint(1, 5)
    elif level == 2:
        return randint(1, 10)
    elif level == 3:
        return randint(1, 100)
    else:
        return -1

level = int(input('''Level 1 (Easy): A number between 1-5
Level 2 (Medium): A number between 1-10
Level 3 (Hard): a number between 1-100
Please choose the level of difficulty: '''))

#Setup a random number

number = random_number(level)
while number == -1:
    level = int(input("No such level, enter again: "))
    number = random_number(level)

#get the first guess
guess = int(input("I'm thinking of a number, can you guess what it is? "))

#Loop while the guess is not the same as the matching number
while guess != number:
    if guess < number:
        guess = int(input("Too Low! Guess again. "))
    else:
        guess = int(input("Too High! Guess again. "))

print("Well done. The number is " + str(number))
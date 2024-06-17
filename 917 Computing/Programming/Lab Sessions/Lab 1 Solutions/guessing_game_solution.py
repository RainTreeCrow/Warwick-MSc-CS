"""
This program is a simple guessing game
"""
from random import randint

secret_number = randint(1,10)

guess = int(input("I'm thiking of a number, can you guess what it is? "))
while guess != secret_number:
    if guess > secret_number:
        guess = int(input("Too High! Guess again! "))
    else:
        guess = int(input("Too Low! Guess again! "))
    
print("Well done the number was " + str(secret_number))
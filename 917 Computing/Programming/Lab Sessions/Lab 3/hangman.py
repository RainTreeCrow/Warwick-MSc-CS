import random
"""This game plays hangman with the user."""
class Hangman:

    def __init__(self):
        self.hidden_word = self.find_word()
        self.blank_string = "-" * len(self.hidden_word)
        self.lives = 6
        
        #For debugging only ;)
        # print(self.hidden_word)
        # print(self.blank_string)

    def process_guess(self, guess):
        #your code here (this should be called from play)
        if len(guess) > 1:
            print("You shall only guess one letter at a time.")
        elif guess[0] not in self.hidden_word:
            print("You have made the wrong guess.")
            self.lives -= 1
            self.draw_hangman(self.lives)
        else:
            print("You have made the right guess.")
            hidden_word = self.hidden_word
            while guess[0] in hidden_word:
                index = hidden_word.index(guess)
                self.blank_string = self.blank_string[:index] + guess + self.blank_string[index + 1:]
                hidden_word = hidden_word[:index] + '-' + hidden_word[index + 1:]
        
    def find_word(self):
        #This method is complete
        words = []
        dictionary = open('words.txt','r')
        for line in dictionary:
            words.append(line.strip())
        dictionary.close()
        return random.choice(words)
        
    def draw_hangman(self, lives):
        if lives == 6:
            print("=========\n ||     |\n ||\n ||\n ||\n ||\n/  \\")
        elif lives == 5: 
            print("=========\n ||     |\n ||     O\n ||\n ||\n ||\n/  \\")
        elif lives == 4:
            print("=========\n ||     |\n ||     O\n ||     |\n ||\n ||\n/  \\")
        elif lives == 3:
            print("=========\n ||     |\n ||    \O\n ||     |\n ||\n ||\n/  \\")
        elif lives == 2: 
            print("=========\n ||     |\n ||    \O/\n ||     |\n ||\n ||\n/  \\")
        elif lives == 1: 
            print("=========\n ||     |\n ||    \O/\n ||     |\n ||    /\n ||\n/  \\")
        elif lives == 0:
            print("=========\n ||     |\n ||     O \n ||    /|\\\n ||    / \\\n ||\n/  \\")
            
    def won_game(self):
        #Your code here (this should be called from play)
        if self.hidden_word == self.blank_string:
            print("You win! Congratulations!")
            return True
        return False
        
    def play(self):
        #Your code here
        while not self.won_game():
            print(self.blank_string)
            guess = input("Take a guess: ")
            self.process_guess(guess)
            if self.lives == 0:
                print("Game over! The word actually is \"" + self.hidden_word + "\".")
                break

if __name__ == "__main__":
    while True:
        game = Hangman()
        game.play()
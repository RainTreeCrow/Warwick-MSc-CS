import itertools

morse_code = {'.-': 'A', '-...': 'B', '-.-.': 'C', '-..': 'D', '.': 'E',
    '..-.': 'F', '--.': 'G', '....': 'H', '..': 'I', '.---': 'J',
    '-.-': 'K', '.-..': 'L', '--': 'M', '-.': 'N', '---': 'O',
    '.--.': 'P', '--.-': 'Q', '.-.': 'R', '...': 'S', '-': 'T',
    '..-': 'U', '...-': 'V', '.--': 'W', '-..-': 'X', '-.--': 'Y', '--..': 'Z',
    '.----': '1', '..---': '2', '...--': '3', '....-': '4', '.....': '5',
    '-....': '6', '--...': '7', '---..': '8', '----.': '9', '-----': '0'
}

dictionaryFileLoc = './dictionary.txt'
dictionary = []
dictFile = open(dictionaryFileLoc, 'r')
for line in dictFile:
    dictionary.append(line.strip().upper())
dictFile.close()

directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]

def morseDecode(inputStringList):
    word = ""
    for sstr in inputStringList:
        if sstr in morse_code.keys():
            word += morse_code[sstr]
    return word


def morsePartialDecode(inputStringList):
    words = [""]
    for sstr in inputStringList:
        # store all indices for missing symbols (x's)
        missing_indices = []
        for index in range(len(sstr)):
            if sstr[index] == 'x':
                missing_indices.append(index)
        # generate all possible morse strings with x's replaced
        cases = [sstr]
        for index in missing_indices:
            updated_cases = []
            for ccase in cases:
                updated_cases.append(ccase[0:index] + '.' + ccase[index+1:])
                updated_cases.append(ccase[0:index] + '-' + ccase[index+1:])
            cases = updated_cases
        # generate all possible words
        updated_words = []
        for word in words:
            for ccase in cases:
                if ccase in morse_code.keys():
                    updated_words.append(word + morse_code[ccase])
        words = updated_words
    # filter the valid words
    valid_words = []
    for word in words:
        if word in dictionary:
            valid_words.append(word)
    return valid_words


class Maze:
    def __init__(self):
        self.maze = []
        self.max_x = -1
        self.max_y = -1

    def addCoordinate(self, x, y, blockType):
        if blockType == 0:
            if (x, y) not in self.maze:
                self.maze.append((x, y))
        elif blockType == 1:
            if (x, y) in self.maze:
                self.maze.remove((x, y))
        else:
            return
        if x > self.max_x:
            self.max_x = x
        if y > self.max_y:
            self.max_y = y

    def printMaze(self):
        for i in range(self.max_y + 1):
            line = ""
            for j in range(self.max_x + 1):
                if (j, i) in self.maze:
                    line += '  ' # '□ '
                else:
                    line += '* ' # '■ '
            print(line)

    def findRoute(self, x1, y1, x2, y2):
        if (x1, y1) not in self.maze or (x2, y2) not in self.maze:
            return []
        maze = self.maze.copy()
        route = [(x1, y1)]
        maze.remove((x1, y1))
        while route != [] and (x2, y2) not in route:
            last = route[-1]
            dead_end = True
            for d in directions:
                x, y = last[0] + d[0], last[1] + d[1]
                if (x, y) in maze:
                    route.append((x, y))
                    maze.remove((x, y))
                    dead_end = False
                    break
            if dead_end:
                route.pop()
        return route


def morseCodeTest():
    hello = ['....','.','.-..','.-..','---']
    print(morseDecode(hello))

    the_quick_brown_fox = [['-', '....', '.'],
        ['--.-', '..-', '..', '-.-.', '-.-'],
        ['-...', '.-.', '---', '.--', '-.'],
        ['..-.', '---', '-..-'],
        ['.---', '..-', '--', '.--.', '...'],
        ['---', '...-', '.', '.-.'],
        ['-', '....', '.'],
        ['.-..', '.-', '--..', '-.--'],
        ['-..', '---', '--.']
    ]
    the_lazy_dog = ""
    for word in the_quick_brown_fox:
        the_lazy_dog += morseDecode(word) + ' '
    print(the_lazy_dog.strip())

    n_3195860724 = ['...--', '.----', '----.', '.....', '---..',
        '-....', '-----', '--...', '..---', '....-'
    ]
    print(morseDecode(n_3195860724))


def partialMorseCodeTest():
    # This is a partial representation of the word TEST, amongst other possible combinations
    test = ['x','x','x..','x']
    print(morsePartialDecode(test))

    # This is a partial representation of the word DANCE, amongst other possible combinations
    dance = ['x..','x-','x.','x.-.','x']
    print(morsePartialDecode(dance))

    hello = ['.x..','x','.x..','.-x.','--x']
    print(morsePartialDecode(hello))

    the_quick_brown_fox = [['-', '.xx.', '.'],
        ['xx.-', '..-', '..', '-x-x', '-.-'],
        ['-.xx', '.-.', '-x-', '.--', '-.'],
        ['.x-.', 'x--', '-..-'],
        ['xx--', '..-', 'x-', '.--.', '...'],
        ['--x', '.x.-', '.', 'x-x'],
        ['-', '.x.x', '.'],
        ['.-..', '.-', '-x..', '-.x-'],
        ['-xx', '---', 'x-x']
    ]
    for word in the_quick_brown_fox:
        print(morsePartialDecode(word))


def mazeTest():
    myMaze = Maze()
    myMaze.addCoordinate(1,0,0) # Start index
    myMaze.addCoordinate(1,1,0)
    myMaze.addCoordinate(1,3,0)
    myMaze.addCoordinate(1,4,0)
    myMaze.addCoordinate(1,5,0)
    myMaze.addCoordinate(1,6,0)
    myMaze.addCoordinate(1,7,0)
    
    myMaze.addCoordinate(2,1,0)
    myMaze.addCoordinate(2,2,0)
    myMaze.addCoordinate(2,3,0)
    myMaze.addCoordinate(2,6,0)
    
    myMaze.addCoordinate(3,1,0)
    myMaze.addCoordinate(3,3,0)
    myMaze.addCoordinate(3,4,0)
    myMaze.addCoordinate(3,5,0)
    myMaze.addCoordinate(3,7,0)
    myMaze.addCoordinate(3,8,0) # End index
    
    # myMaze.addCoordinate(4,1,0)
    myMaze.addCoordinate(4,5,0)
    myMaze.addCoordinate(4,7,0)
    
    myMaze.addCoordinate(5,1,0)
    myMaze.addCoordinate(5,2,0)
    myMaze.addCoordinate(5,3,0)
    myMaze.addCoordinate(5,5,0)
    myMaze.addCoordinate(5,6,0)
    myMaze.addCoordinate(5,7,0)
    
    myMaze.addCoordinate(6,3,0)
    myMaze.addCoordinate(6,5,0)
    myMaze.addCoordinate(6,7,0)
    
    myMaze.addCoordinate(7,1,0)
    myMaze.addCoordinate(7,2,0)
    myMaze.addCoordinate(7,3,0)
    myMaze.addCoordinate(7,5,0)
    myMaze.addCoordinate(7,7,0)

    # Test your findRoute method
    myMaze.printMaze()
    print(myMaze.findRoute(1, 0, 1, 5))
    print(myMaze.findRoute(3, 1, 7, 5))
    print(myMaze.findRoute(1, 0, 3, 8))
    print(myMaze.findRoute(2, 6, 7, 7))
    print(myMaze.findRoute(0, 0, 7, 7))
    print(myMaze.findRoute(1, 0, 7, 8))
    print(myMaze.findRoute(7, 3, 1, 7))


def main():
    morseCodeTest()
    partialMorseCodeTest()
    mazeTest()


if __name__ == '__main__':
    main()
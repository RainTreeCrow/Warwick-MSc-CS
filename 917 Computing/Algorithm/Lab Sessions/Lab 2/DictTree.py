class DictTreeNode():

    def __init__(self,character):
        self.character = character
        self.children = {}

    """
    These getter and setter methods are here to highlight
    the kinds of data you want to access or retrieve.
    """
    def getChild(self,character):
        if character in self.children.keys():
            return self.children[character]
        else:
            return None

    def getCharacter(self):
        return self.character

    def setChild(self,character,node):
        self.children[character] = node

    def setValue(self,character):
        self.character = character

class DictTree():
    def __init__(self):
        self.root = DictTreeNode('')

    def getRootNode(self):
        return self.root

    def insert(self,parent,character):
        parent.setChild(character, DictTreeNode(character))

    def addWord(self,word):
        node = self.getRootNode()
        for i in range(len(word)):
            character = word[i]
            if node.getChild(character) == None:
                self.insert(node, character)
            node = node.getChild(character)
        self.insert(node,'~')
    
    def findWord(self,word):
        node = self.getRootNode()
        for i in range(len(word)):
            character = word[i]
            if node.getChild(character) == None:
                return False
            node = node.getChild(character)
        if node.getChild('~') != None:
            return True
        return False

def main():
    dict_tree = DictTree()
    words = []
    dictionary = open('words','r')
    for line in dictionary:
        words.append(line.strip())
    dictionary.close()
    for word in words:
        dict_tree.addWord(word)
    while True:
        search_word = input("Please enter a word: ")
        if dict_tree.findWord(search_word):
            print("The word {} exists in dictionary.".format(search_word))
        else:
            print("The word {} does not exist in dictionary.".format(search_word))

if __name__ == "__main__":
    main()
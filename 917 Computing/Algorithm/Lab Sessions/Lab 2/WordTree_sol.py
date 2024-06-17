# Note, there are a few different approaches to this problem!

class TreeNode():

    def __init__(self,key):
        self.key = key
        self.children = {}

    """
    These getter and setter methods are here to highlight
    the kinds of data you want to access or retrieve.
    """

    def getChild(self,key):
        return self.children.get(key)


class Tree():
    def __init__(self):
        self.root = TreeNode('Null')

    def insertWord(self,parent,word):
        if(len(word) == 0):
            return

        childNode = parent.getChild(word[0])

        # Add Child Node if none exists
        if(childNode is None):
            parent.children[word[0]] = TreeNode(word[0])

        self.insertWord(parent.children[word[0]],word[1:])

    def searchWord(self,parent,word):
        if(len(word) == 0):
            return True

        childNode = parent.getChild(word[0])

        if(childNode is None):
            return False

        return self.searchWord(parent.children[word[0]],word[1:])

def main():
    wordTree = Tree()

    with open('words','r') as f:
        for word in f:
            wordTree.insertWord(wordTree.root,word)
    
    print(wordTree.searchWord(wordTree.root,'Aaron'))
    print(wordTree.searchWord(wordTree.root,'Aaroniz'))

if __name__ == "__main__":
    main()
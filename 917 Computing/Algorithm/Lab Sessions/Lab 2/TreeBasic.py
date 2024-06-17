import random

class BinaryTreeNode():

    def __init__(self,value):
        self.value = value
        self.leftChild = None
        self.rightChild = None

    """
    These getter and setter methods are here to highlight
    the kinds of data you want to access or retrieve.
    """
    def getLeftChild(self):
        return self.leftChild

    def getRightChild(self):
        return self.rightChild

    def getValue(self):
        return self.value

    def setLeftChild(self,node):
        self.leftChild = node

    def setRightChild(self,node):
        self.rightChild = node

    def setValue(self,value):
        self.value = value

class BinaryTree():
    def __init__(self,rootValue):
        self.root = BinaryTreeNode(rootValue)

    def getRootNode(self):
        return self.root

    def insertAtRoot(self,value):
        self.insert(self.root,value)

    def insert(self,parent,value):
        if value < parent.getValue():
            if parent.getLeftChild() == None:
                parent.setLeftChild(BinaryTreeNode(value))
            else:
                self.insert(parent.getLeftChild(), value)
        elif value > parent.getValue():
            if parent.getRightChild() == None:
                parent.setRightChild(BinaryTreeNode(value))
            else:
                self.insert(parent.getRightChild(), value)
        else:
            print("Values in the tree must be unique.")
    
    def bfs(self):
        bfs_list = []
        level = []
        level.append(self.getRootNode())
        while level != []:
            next_level = []
            for node in level:
                bfs_list.append(node.getValue())
                left = node.getLeftChild()
                right = node.getRightChild()
                if left != None:
                    next_level.append(left)
                if right != None:
                    next_level.append(right)
            level = next_level
        return bfs_list
    
    def dfs_in_helper(self,node):
        if node == None:
            return []
        else:
            left = self.dfs_in_helper(node.getLeftChild())
            right = self.dfs_in_helper(node.getRightChild())
            return left + [node.getValue()] + right
    
    def dfs_in(self):
        return self.dfs_in_helper(self.getRootNode())

    def dfs_pre_helper(self,node):
        if node == None:
            return []
        else:
            left = self.dfs_pre_helper(node.getLeftChild())
            right = self.dfs_pre_helper(node.getRightChild())
            return [node.getValue()] + left + right
    
    def dfs_pre(self):
        return self.dfs_pre_helper(self.getRootNode())

    def dfs_post_helper(self,node):
        if node == None:
            return []
        else:
            left = self.dfs_post_helper(node.getLeftChild())
            right = self.dfs_post_helper(node.getRightChild())
            return left + right + [node.getValue()]
    
    def dfs_post(self):
        return self.dfs_post_helper(self.getRootNode())

def main():
    value_list = []
    for i in range(10):
        value_list.append(random.randint(1, 100))
    print("Values: " + str(value_list))
    tree = BinaryTree(value_list[0])
    for value in value_list[1:]:
        tree.insertAtRoot(value)
    bfs_list = tree.bfs()
    print("BFS: " + str(bfs_list))
    dfs_in_list = tree.dfs_in()
    print("In-order DFS: " + str(dfs_in_list))
    dfs_pre_list = tree.dfs_pre()
    print("Pre-order DFS: " + str(dfs_pre_list))
    dfs_post_list = tree.dfs_post()
    print("Post-order DFS: " + str(dfs_post_list))

if __name__ == "__main__":
    main()
import random
import timeit

class linkedListNode:
    """
    A linked list node represents one element in the linked-list chain.
    In a singly linked-list it should have information about itself (the data)
    and how to find the next node in the list (next)

    HINT: You can store an instance of an object inside another object, even if
    they are the same type (but you should be very careful when doing this
    with init funtions, you can end up calling the constructor infinitely via recursion)

    """
    def __init__(self,value):
        self.next = None
        self.value = value

    def setNext(self,nextNode):
        self.next = nextNode

    def getValue(self):
        return self.value

    def setValue(self,value):
        self.value = value

    def getNext(self):
        return self.next

class linkedList:
    def __init__(self):
        self.head = None
        self.tail = None
        self.count = 0

    def set(self,index,value):
        if(index>self.size()):
            print("Error: Index exceeds size")

        count = 0
        target = self.head
        while count < index:
            target = target.getNext()
            count = count + 1
        target.setValue(value)

    def get(self,index):
        if(index>self.size()):
            print("Error: Index exceeds size")

        count = 0
        target = self.head
        while count < index:
            target = target.getNext()
            count = count + 1
        return target.getValue()

    def insert(self,index,value):
        if(index>self.size()):
            print("Error: Index exceeds size")

        count = 0
        target = self.head
        while count < index-1:
            target = target.getNext()
            count = count + 1

        oldNext = target.getNext()
        newNext = linkedListNode(value)
        target.setNext(newNext)
        newNext.setNext(oldNext)        
        self.count = self.count + 1

    def delete(self,index):
        if(index>self.size()):
            print("Error: Index exceeds size")

        count = 0
        target = self.head
        while count < index-1:
            target = target.getNext()
            count = count + 1
            newNext = target.getNext().getNext()
        target.setNext(newNext)
        self.count = self.count - 1

    def size(self):
        return self.count

    def append(self,value):
        if(self.size()==0):
            self.head = linkedListNode(value)
            self.tail = self.head
            self.count = self.count + 1
        else:
            self.tail.setNext(linkedListNode(value))
            self.tail = self.tail.getNext()
            self.count = self.count + 1

def generateRandomList(length):
    result = []

    for i in range(0,length):
        result.append(random.randint(0,10000))
    return result

def generateRandomLinkedList(length):
    result = linkedList()

    for i in range(0,length):
        result.append(random.randint(0,10000))
    return result

def exercise1():
    myList = generateRandomLinkedList(10)
    for i in range(0,10):
        print(int(myList.get(i)))
    print("-----------")
    myList.set(1,151)

    for i in range(0,10):
        print(int(myList.get(i)))
    print("-----------")

    myList.insert(9,18)
    myList.insert(1,22)

    for i in range(0,12):
        print(int(myList.get(i)))
    print("-----------")

    myList.delete(2)

    for i in range(0,11):
        print(int(myList.get(i)))
    print("-----------")

def exercise2ListSet(myList,index,value):
    timeStart = timeit.default_timer()
    myList[index] = value
    timeEnd = timeit.default_timer()
    time = timeEnd - timeStart
    print(str(time))

def exercise2LinkedListSet(myList,index,value):
    timeStart = timeit.default_timer()
    myList.set(index,value)
    timeEnd = timeit.default_timer()
    time = timeEnd - timeStart
    print(str(time))

def exercise2ListInsert(myList,index,value):
    timeStart = timeit.default_timer()
    myList.insert(index,value)
    timeEnd = timeit.default_timer()
    time = timeEnd - timeStart
    print(str(time))

def exerciseLinkedList():
    myList = generateRandomList(10000000)
    exercise2ListSet(myList,1,12)
    exercise2ListSet(myList,500,12)
    exercise2ListSet(myList,10000,12)
    exercise2ListSet(myList,50000,12)
    exercise2ListSet(myList,500000,12)
    exercise2ListSet(myList,1000000,12)
    exercise2ListSet(myList,5000000,12)

    print("Linked List Set")
    myList = generateRandomLinkedList(10000000)
    exercise2LinkedListSet(myList,1,12)
    exercise2LinkedListSet(myList,500,12)
    exercise2LinkedListSet(myList,10000,12)
    exercise2LinkedListSet(myList,50000,12)
    exercise2LinkedListSet(myList,500000,12)
    exercise2LinkedListSet(myList,1000000,12)
    exercise2LinkedListSet(myList,5000000,12)

    print("List Insert")
    myList = generateRandomList(10000000)
    exercise2ListInsert(myList,1,12)
    exercise2ListInsert(myList,500,12)
    exercise2ListInsert(myList,10000,12)
    exercise2ListInsert(myList,50000,12)
    exercise2ListInsert(myList,500000,12)
    exercise2ListInsert(myList,1000000,12)
    exercise2ListInsert(myList,5000000,12)

    print("Linked List Insert")
    myList = generateRandomLinkedList(10000000)
    exercise2ListInsert(myList,1,12)
    exercise2ListInsert(myList,500,12)
    exercise2ListInsert(myList,10000,12)
    exercise2ListInsert(myList,50000,12)
    exercise2ListInsert(myList,500000,12)
    exercise2ListInsert(myList,1000000,12)
    exercise2ListInsert(myList,5000000,12)

def main():
    exerciseLinkedList()

if __name__ == "__main__":
    main()
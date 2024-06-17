import random
import timeit

def bubbleSort(inputList):
   if(len(inputList) == 1):
       return inputList

   # Multiple passes
   for i in range(0,len(inputList)):
       # For each pass
       for j in range(0,len(inputList)-1):
           if(inputList[j][1] > inputList[j+1][1]):
               # Swap
               inputList[j], inputList[j+1] = inputList[j+1], inputList[j]

   return inputList

def mergeSort(inputList):

    if(len(inputList) == 1):
        return inputList
    else:
        midpoint = (len(inputList))//2
        return merge(mergeSort(inputList[:midpoint]),mergeSort(inputList[midpoint:]))

def merge(list1,list2):
    pointer1 = 0
    pointer2 = 0
    result = []

    if(list1 is None and list2 is None):
        return None

    if(list1 is None):
        return list2

    if(list2 is None):
        return list1

    while((pointer1 < len(list1)) and (pointer2 < len(list2))):
        if(list1[pointer1][1] < list2[pointer2][1]):
            result.append(list1[pointer1])
            pointer1 = pointer1 + 1
        else:
            result.append(list2[pointer2])
            pointer2 = pointer2 + 1

    if(pointer1 < len(list1)):
        result = result + list1[pointer1:]

    if(pointer2 < len(list2)):
        result = result + list2[pointer2:]

    return result

def exerciseSorting():
    data = []
    with open('namePriorities.txt','r') as f:
        for line in f:
            result = line.split(',')
            name = result[0].rstrip()
            val = int(result[1].rstrip())
            data.append((name,val))
    time1 = timeit.default_timer()
    result = mergeSort(data)
    time2 = timeit.default_timer()
    time = time2-time1
    print(time)

    with open('Result1.txt','w') as f:
        for line in result:
            f.write(str(line[0]) + "," + str(line[1]) + "\n")

    data = []
    with open('namePriorities.txt','r') as f:
        for line in f:
            result = line.split(',')
            name = result[0].rstrip()
            val = int(result[1].rstrip())
            data.append((name,val))
    time1 = timeit.default_timer()
    result = bubbleSort(data)
    time2 = timeit.default_timer()
    time = time2-time1
    print(time)

    with open('Result2.txt','w') as f:
        for line in result:
            f.write(str(line[0]) + "," + str(line[1]) + "\n")

def main():
    exerciseSorting()

if __name__ == "__main__":
    main()
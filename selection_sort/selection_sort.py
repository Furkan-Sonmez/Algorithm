def findSmallest(arr):
    smallest = arr[0]
    smallest_index = 0 

    for i in range(1, len(arr)):
        if arr[i] < smallest:
            smallest = arr[i]
            smallest_index = i
    return smallest_index        

def selectionSort(arr):
    newArr = []
    for i in range ( len(arr)):
        smallest = findSmallest(arr)
        newArr.append(arr.pop(smallest))        #The list pop in Python returns the popped value, or in other words, the item present at the specified index value.
    return newArr


print(selectionSort([5,6,2,10,23]))
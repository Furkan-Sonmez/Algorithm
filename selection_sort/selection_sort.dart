void main(List<String> args) {
  print(selectionSort([5, 2, 4, 6, 1, 24, 15, 6]));
}

List<int> selectionSort(List<int> arr) {
  final List<int> newArr = List.empty(growable: true);

  final arrLenght = arr.length;

  for (var i = 0; i < arrLenght; i++) {
    final smallest = findSmallest(arr);
    newArr.add(arr.removeAt(smallest));
  }

  return newArr;
}

int findSmallest(List<int> arr) {
  int smallest = arr[0];
  int smallestIndex = 0;

  for (var i = 1; i < arr.length; i++) {
    if (arr[i] < smallest) {
      smallest = arr[i];
      smallestIndex = i;
    }
  }
  return smallestIndex;
}

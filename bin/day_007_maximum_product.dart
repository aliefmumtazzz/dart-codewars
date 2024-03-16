// https://www.codewars.com/kata/5a4138acf28b82aa43000117/dart

// Task
// Given an array of integers , Find the maximum product obtained from multiplying 2 adjacent numbers in the array.

// Notes
// Array/list size is at least 2.

// Array/list numbers could be a mixture of positives, negatives also zeroes .

// Input >> Output Examples
// adjacentElementsProduct([1, 2, 3]); ==> return 6
// Explanation:
// The maximum product obtained from multiplying 2 * 3 = 6, and they're adjacent numbers in the array.

// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';

int adjacentElementsProduct(List<int> arr) {
  return arr
      .mapIndexed((i, e) => e * (i + 1 == arr.length ? arr[i - 1] : arr[i + 1]))
      .toList()
      .reduce((x, y) => y > x ? y : x);
}

void main() {
  print(adjacentElementsProduct([4, 12, 3, 1, 5]));
}

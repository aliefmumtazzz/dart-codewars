// https://www.codewars.com/kata/5467e4d82edf8bbf40000155/dart

// Your task is to make a function that can take any non-negative integer as an argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

// Examples:
// Input: 42145 Output: 54421

// Input: 145263 Output: 654321

// Input: 123456789 Output: 987654321

int descendingOrder(int n) {
  final newVal = '$n'.split('').map((e) => int.parse(e)).toList();
  newVal.sort((a, b) => b - a);
  return int.parse(newVal.join());
}

void main() {
  print(descendingOrder(123456789));
}

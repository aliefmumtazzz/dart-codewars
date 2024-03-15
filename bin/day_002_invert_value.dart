// https://www.codewars.com/kata/5899dc03bc95b1bf1b0000ad/dart

// Given a set of numbers, return the additive inverse of each. Each positive
// becomes negatives, and the negatives become positives.

List<int> invert(List<int> arr) {
  return arr.map((e) => -e).toList();
}

void main() {
  print(invert([1, -2, 3, -4, 5]));
}

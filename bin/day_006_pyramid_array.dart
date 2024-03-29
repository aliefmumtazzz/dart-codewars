// https://www.codewars.com/kata/515f51d438015969f7000013/dart

// Write a function that when given a number >= 0, returns an Array of ascending length subarrays.

// pyramid(0) => [ ]
// pyramid(1) => [ [1] ]
// pyramid(2) => [ [1], [1, 1] ]
// pyramid(3) => [ [1], [1, 1], [1, 1, 1] ]

List<List<int>> pyramid(int n) {
  if (n == 0) return [];
  List<List<int>> y = [];
  for (int i = 1; i <= n; i++) {
    List<int> x = [];
    for (int j = 1; j <= i; j++) {
      x.add(1);
    }
    y.add(x);
  }
  return y;

  // the best practice
  // return List.generate(n, (i) => List.filled(i + 1, 1));
}

void main() {
  print(pyramid(0));
  print(pyramid(1));
  print(pyramid(2));
  print(pyramid(3));
}

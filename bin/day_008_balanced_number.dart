// https://www.codewars.com/kata/5a4e3782880385ba68000018/dart

// A balanced number is a number where the sum of digits to the left of the middle digit(s) and the sum of digits to the right of the middle digit(s) are equal.

// If the number has an odd number of digits, then there is only one middle digit. (For example, 92645 has one middle digit, 6.) Otherwise, there are two middle digits. (For example, the middle digits of 1301 are 3 and 0.)

// The middle digit(s) should not be considered when determining whether a number is balanced or not, e.g. 413023 is a balanced number because the left sum and right sum are both 5.

// The task
// Given a number, find if it is balanced, and return the string "Balanced" or "Not Balanced" accordingly. The passed number will always be positive.

// Examples
// 7 ==> return "Balanced"
// Explanation:
// middle digit(s): 7
// sum of all digits to the left of the middle digit(s) -> 0
// sum of all digits to the right of the middle digit(s) -> 0
// 0 and 0 are equal, so it's balanced.
// 295591 ==> return "Not Balanced"

// final left = '$x'
//     .split('')
//     .sublist(0, '$x'.length ~/ 2 - ('$x'.length % 2 == 1 ? 0 : 1));
// final right = '$x'.split('').sublist('$x'.length ~/ 2 + 1);

String balancedNum(int x) {
  if (x < 100) return 'Balanced';
  int sum(bool isLeft) => '$x'
      .split('')
      .sublist(
        isLeft ? 0 : '$x'.length ~/ 2 + 1,
        isLeft ? '$x'.length ~/ 2 - ('$x'.length % 2 == 1 ? 0 : 1) : null,
      )
      .map((e) => int.parse(e))
      .reduce((v, e) => v + e);
  return sum(true) == sum(false) ? 'Balanced' : 'Not Balanced';
}

void main() {
  print(balancedNum(959));
  print(balancedNum(1025111));
  print(balancedNum(102511));
  print(balancedNum(13));
  print(balancedNum(432));
  print(balancedNum(295591));
}

// https://www.codewars.com/kata/585cf93f6ad5e0d9bf000010/dart

// Mount the Bowling Pins!
// Task:
// Did you ever play Bowling? Short: You have to throw a bowl into 10 Pins arranged like this:

// I I I I  # each Pin has a Number:    7 8 9 10
//  I I I                                4 5 6
//   I I                                  2 3
//    I                                    1
// You will get an array of integers between 1 and 10, e.g. [3, 5, 9], and have to remove them from the field like this:

// I I   I
//  I   I
//   I
//    I
// Return a string with the current field.

String bowlingPins(List<int> pins) {
  for (int i = 0; i < 4; i++) {
    List<String> row = [];
    for (int j = 0; j < 7; j++) {
      if (i.isOdd || j.isEven) {
        row.add('I');
      } else {
        row.add('*');
      }
    }
    print(row);
  }
  return '';
}

void main() {
  print(bowlingPins([2, 3]));
}

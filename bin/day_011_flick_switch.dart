// https://www.codewars.com/kata/64fbfe2618692c2018ebbddb/dart

// Task
// Create a function that always returns True/true for every item in a given list.
// However, if an element is the word 'flick', switch to always returning the opposite boolean value.

// Examples
// ['codewars', 'flick', 'code', 'wars'] ➞ [True, False, False, False]

// ['flick', 'chocolate', 'adventure', 'sunshine'] ➞ [False, False, False, False]

// ['bicycle', 'jarmony', 'flick', 'sheep', 'flick'] ➞ [True, True, False, False, True]

List<bool> flickSwitch(List<String> lst) {
  bool flick = true;
  return lst.map((e) {
    if (e == 'flick') flick = !flick;
    return flick;
  }).toList();
}

void main() {
  print(flickSwitch(['codewars', 'flick', 'code', 'wars']));
  print(flickSwitch(['flick', 'chocolate', 'adventure', 'sunshine']));
  print(flickSwitch(['bicycle', 'jarmony', 'flick', 'sheep', 'flick']));
}

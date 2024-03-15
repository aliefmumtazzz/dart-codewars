// https://www.codewars.com/kata/58941fec8afa3618c9000184/dart

// Task
// Each day a plant is growing by upSpeed meters. Each night that plant's height decreases
// by downSpeed meters due to the lack of sun heat. Initially, plant is 0 meters tall.
// We plant the seed at the beginning of a day. We want to know when the height of the plant will reach a certain level.

// Example
// For upSpeed = 100, downSpeed = 10 and desiredHeight = 910, the output should be 10.

int growingPlant(int upSpeed, int downSpeed, int desiredHeight) {
  int height = 0;
  int days = 0;
  int night = 0;
  while (height <= desiredHeight) {
    height += upSpeed;
    days += 1;
    if (height > desiredHeight) break;
    if (height == desiredHeight) break;
    height -= downSpeed;
    night += 1;
    if (height == desiredHeight) break;
  }
  return days > night ? days : night;
}

void main() {
  print(growingPlant(10, 9, 4));
  print(growingPlant(5, 2, 5));
}

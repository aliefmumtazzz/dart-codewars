// https://www.codewars.com/kata/5282b48bb70058e4c4000fa7/dart

// When working with color values it can sometimes be useful to extract the individual red, green, and blue (RGB)
// component values for a color. Implement a function that meets these requirements:

// Accepts a case-insensitive hexadecimal color string as its parameter (ex. "#FF9933" or "#ff9933")
// Returns a Map<String, int> with the structure {r: 255, g: 153, b: 51} where r, g, and b range from 0 through 255
// Note: your implementation does not need to support the shorthand form of hexadecimal notation (ie "#FFF")

Map<String, int> hexToRGB(String hex) => {
      'r': int.parse(hex.substring(1, 3), radix: 16),
      'g': int.parse(hex.substring(3, 5), radix: 16),
      'b': int.parse(hex.substring(5, 7), radix: 16),
    };

void main() {
  print(hexToRGB('#FF9933'));
  print(hexToRGB('#FA13F3'));
  print(hexToRGB('#84002C'));
}

// Input: carRacer2024

void main() {
  final String word = "carRacer2024";
  Map<String, int> result = {};

  for (int i = 0; i < word.length; i++) {
    String letter = word[i];
    if (result.containsKey(letter)) {
      result[letter] = result[letter]! + 1;
    } else {
      result[letter] = 1;
    }
  }

  print("Result: ${result}");
}

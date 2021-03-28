void main() {
  for (int i = 0; i < 10; i++) {
    print(i);
  }

  List<int> numbers = [1, 4, 5, 10];
  int total = 0;
  for (int i = 0; i < numbers.length; i++) {
    total += numbers[i];
  }
  print(total);

  total = 0;
  for (int number in numbers) {
    total += number;
  }
  print(total);

  for (int i = 0; i < 10; i++) {
    print(i);
    if (i == 5) {
      break;
    }
  }
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      continue;
    }
    print(i);
  }
}

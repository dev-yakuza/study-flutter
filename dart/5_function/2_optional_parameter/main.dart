String add(int a, int b, [int c = 0]) {
  int sum = a + b + c;
  return 'Sum: $sum';
}

void main() {
  print(add(1, 1));
  print(add(1, 1, 1));
}

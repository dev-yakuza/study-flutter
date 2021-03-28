String add(int a, int b, {int c = 0, int d = 0}) {
  int sum = a + b + c + d;
  return 'Sum: $sum';
}

void main() {
  print(add(1, 1));
  print(add(1, 1, c: 1));
  print(add(1, 1, d: 1));
  print(add(1, 1, c: 1, d: 1));
}

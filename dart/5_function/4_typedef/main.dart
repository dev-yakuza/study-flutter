typedef Operator(int n, int m);

String add(int a, int b) {
  int sum = a + b;
  return 'Sum: $sum';
}

String substract(int c, int d) {
  int sub = c - d;
  return 'Sub: $sub';
}

String calculate(int x, int y, Operator op) {
  return op(x, y);
}

void main() {
  print(add(2, 1));
  print(substract(2, 1));

  Operator op = add;
  print(op(2, 1));

  op = substract;
  print(op(2, 1));

  print(calculate(2, 1, add));
  print(calculate(2, 1, substract));
}

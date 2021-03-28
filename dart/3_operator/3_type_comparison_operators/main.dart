void main() {
  int num = 3;

  print(num is int);
  print(num is String);
  print(num is List);

  print(num is! int);
  print(num is! String);
  print(num is! List);
}

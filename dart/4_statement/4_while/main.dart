void main() {
  int i = 0;
  while (i < 10) {
    print(i);
    i++;
  }

  i = 0;
  do {
    print(i);
    i++;
  } while (i < 10);

  i = 0;
  while (true) {
    print(i);
    i++;
    if (i == 5) {
      break;
    }
  }

  i = 0;
  while (i < 10) {
    if (i == 5) {
      continue;
    }
    print(i);
    i++;
  }
}

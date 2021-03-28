class Fruit {
  String? _name;

  Fruit(String name) : this._name = name;

  void printName() {
    print('My name is ${this._name}!');
  }
}

void main() {
  Fruit fruit = new Fruit('Apple');
  fruit.printName();
  // Print Private variable
  // It's possibe because of same file.
  print(fruit._name);
}

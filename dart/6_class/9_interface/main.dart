class Food {
  String? name;

  void printName() {}
}

class Fruit implements Food {
  String? name;

  Fruit(String name) : this.name = name;

  void printName() {
    print('My name is ${this.name}!');
  }
}

void main() {
  Fruit fruit = new Fruit('Apple');
  fruit.printName();
}

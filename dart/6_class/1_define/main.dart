class Fruit {
  String name = 'Apple';

  void printName() {
    print('My name is ${this.name}!');
  }
}

void main() {
  Fruit fruit = new Fruit();
  fruit.printName();
  fruit.name = 'Banana';
  fruit.printName();
}

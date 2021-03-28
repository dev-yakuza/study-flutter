class Fruit {
  String? name;
  String? color;

  Fruit(String name, String color)
      : this.name = name,
        this.color = color;

  void printAll() {
    print('My name is ${this.name}(${this.color})!');
  }

  void printName() {
    print('My name is ${this.name}!');
  }

  void printColor() {
    print('I am ${this.color}');
  }
}

void main() {
  Fruit fruit = new Fruit('Apple', 'Red');
  fruit.printAll();
  fruit.printName();
  fruit.printColor();

  new Fruit('Apple', 'Red')
    ..printAll()
    ..printName()
    ..printColor();
}

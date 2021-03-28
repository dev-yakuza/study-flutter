class Fruit {
  final String? name;
  final String? color;

  Fruit({String? name, String? color})
      : this.name = name,
        this.color = color;

  void printName() {
    print('My name is ${this.name}(${this.color})!');
  }
}

void main() {
  Fruit fruit = new Fruit(name: 'Apple', color: 'Red');
  fruit.printName();

  // fruit.name = 'Kiwi'; // << ERROR
}

class Fruit {
  String? name;
  String? color;

  Fruit(String name, String color) {
    this.name = name;
    this.color = color;
  }

  // Fruit(String name, String color)
  //     : this.name = name,
  //       this.color = color;

  // Named parameter
  // Fruit({String? name, String? color})
  //     : this.name = name,
  //       this.color = color;

  // Named Constructor: You can use any name on [fromMap]
  Fruit.fromMap(Map<String, String> fruit)
      : this.name = fruit['name'],
        this.color = fruit['color'];

  void printName() {
    print('My name is ${this.name}(${this.color})!');
  }
}

void main() {
  Fruit fruit = new Fruit('Apple', 'Red');
  fruit.printName();
}

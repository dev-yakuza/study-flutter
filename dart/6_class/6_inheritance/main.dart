class Food {
  String? name;

  Food(String name) : this.name = name;

  void printName() {
    print('My name is ${this.name}!');
  }
}

// Inheritance
class Fruit extends Food {
  // Call parent constructor
  Fruit(String name) : super(name);

  void printFruit() {
    print('${this.name} is Fruit!');
  }
}

void main() {
  Fruit fruit = new Fruit('Apple');
  fruit.printName();
  fruit.printFruit();

  Food food = new Food('Rice');
  food.printName();
  // food.printFruit(); // << ERROR
}

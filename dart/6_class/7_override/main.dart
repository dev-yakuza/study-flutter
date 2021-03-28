class Food {
  String? name;

  Food(String name) : this.name = name;

  void printName() {
    print('My name is ${this.name}!');
  }
}

class Fruit extends Food {
  Fruit(String name) : super(name);

  void printName() {
    super.printName();
    print('${this.name} is Fruit!');
  }
}

void main() {
  Fruit fruit = new Fruit('Apple');
  fruit.printName();

  Food food = new Food('Rice');
  food.printName();
}

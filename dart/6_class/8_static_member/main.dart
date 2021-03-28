class Food {
  static String? kind;
  String? name;

  Food(String name) : this.name = name;

  static printAll(String name, String kind) {
    print('${name} is ${kind}!');
  }

  void printName() {
    print('My name is ${this.name}! I am ${kind}!');
  }
}

void main() {
  Food apple = new Food('Apple');
  apple.printName();
  Food banana = new Food('Banana');
  banana.printName();

  Food.kind = 'Fruit';
  apple.printName();
  banana.printName();

  Food.printAll('Apple', 'Red Fruit');
}

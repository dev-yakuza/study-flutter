class Fruit {
  String? _name;

  Fruit(String name) : this._name = name;

  String get name {
    return this._name ?? '';
  }

  void set name(String name) {
    this._name = name;
  }
}

void main() {
  Fruit fruit = new Fruit('Apple');

  print(fruit.name); // Getter
  fruit.name = 'Banana'; //Setter
  print(fruit.name);
}

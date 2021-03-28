void main() {
  List<String> fruits1 = [];

  fruits1.add('Apple');
  fruits1.add('Banana');
  fruits1.add('Kiwi');

  print(fruits1);
  fruits1.removeAt(1);
  print(fruits1);

  List<String> fruits2 = ['Apple', 'Banana', 'Kiwi'];
  print(fruits2);

  List<String> fruits3 = List.from(['Apple', 'Banana', 'Kiwi']);
  print(fruits3);

  List<String> fruits4 = List.filled(3, '');

  fruits4[0] = 'Apple';
  fruits4[1] = 'Banana';
  fruits4[2] = 'Kiwi';

  print(fruits4);

  List<String> fruits5 = List.empty(growable: true);

  fruits5.add('Apple');
  fruits5.add('Banana');
  fruits5.add('Kiwi');

  print(fruits5);

  List<String> fruits6 = ['Apple', 'Banana', 'Kiwi'];
  print(fruits6.join(', '));

  List<String> fruits7 = ['Apple', 'Banana', 'Kiwi'];
  print(fruits7.indexOf('Banana'));

  List<String> fruits8 = ['Apple', 'Banana', 'Kiwi'];
  print(fruits8.where((fruit) => fruit.toLowerCase().indexOf('a') >= 0));

  List<String> fruits9 = ['Apple', 'Banana', 'Kiwi'];

  fruits9.forEach((fruit) {
    print('${fruit}!');
  });

  for (String fruit in fruits9) {
    print('${fruit}!!');
  }

  List<String> fruits10 = ['Apple', 'Banana', 'Kiwi'];
  Iterable<String> newFruits = fruits10.map((e) {
    return 'My name is ${e}';
  });
  print(newFruits);
  print(newFruits.toList());

  List<int> numbers1 = [1, 2, 3, 4, 5];
  int result = numbers1.fold(0, (previousValue, element) {
    int sum = previousValue + element;
    return sum * 2;
  });
  print(result);

  List<int> numbers2 = [1, 2, 3, 4, 5];
  int total = numbers2.reduce((value, element) => value + element);
  print(total);

  List<int> numbers3 = [10, 20, 30, 40, 50];
  Iterable indexNumbers = numbers3.asMap().entries.map((e) {
    return 'index: ${e.key} / value: ${e.value}';
  });
  print(indexNumbers);
  print(indexNumbers.toList());
}

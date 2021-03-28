void main() {
  Map fruitCount1 = {
    'Apple': 3,
    'Banana': 4,
    'Kiwi': 10,
  };

  print(fruitCount1);
  print(fruitCount1['Apple']);

  Map fruitCount2 = {};

  fruitCount2.addAll({
    'Apple': 3,
    'Banana': 4,
    'Kiwi': 10,
  });

  print(fruitCount2);
  fruitCount2.remove('Apple');
  print(fruitCount2);
  fruitCount2['Banana'] = 20;
  print(fruitCount2);

  Map fruitCount3 = new Map.from({
    'Apple': 3,
    'Banana': 4,
    'Kiwi': 10,
  });

  print(fruitCount3);

  Map fruitCount4 = new Map.from({
    'Apple': 3,
    'Banana': 4,
    'Kiwi': 10,
  });

  print(fruitCount4.keys.toList());
  print(fruitCount4.values.toList());

  Map<String, int> fruitCount5 = {
    'Apple': 3,
    'Banana': 4,
    'Kiwi': 10,
  };

  print(fruitCount5);

  Map<String, int> fruitCount6 = {
    'Apple': 3,
    'Banana': 4,
    'Kiwi': 10,
  };

  Iterable newFruitCount =
      fruitCount6.entries.map((e) => '${e.key} is ${e.value}!');
  print(newFruitCount);
  print(newFruitCount.toList());
}

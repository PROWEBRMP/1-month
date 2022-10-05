void main(List<String> args) {
  // Класс Map представляет коллекцию элементов, где каждый элемент имеет ключ и значение.
  // Ключ и значение элемента могут представлять различные типы.

  // Для создания объекта Map могут использоваться фигурные скобки {}, внутри которых помещаются
  // пары ключ-значение, либо конструктор класса Map. Варианты создания Map:
  var map = {
    1: 'Tom',
    2: 'Bob',
    3: 'Sam',
  };
  // эквивалентное определение Map
  // ignore: omit_local_variable_types, unused_local_variable
  Map<int, String> map2 = {
    1: 'Tom',
    2: 'Bob',
    3: 'Sam',
  };

  // В данном случае оба объекта Map имеют тип Map<int, String> - в качестве типа ключей
  // используется тип int, а в качестве типа значений - тип String

  // В фигурных скобках определяются три элемента в формате ключ : значение. То есть в данном случае есть три ключа - 1, 2, 3,
  // с которыми сопоставляются три значения - строки 'Tom', 'Bob', 'Sam'.

  // Используя ключи, мы можем получить или изменить значения элементов:

  print(map[1]); // Bob
  map[1] = 'Vazgen';
  print(map[1]); // Vazgen

  // Подобным образом можно создавать объекты Map с другими типа ключей и значений.
  // Например, объект Map<String, String> (ключи и значения представляют тип String):

  var countries = {
    'Spain': 'Madrid',
    'France': 'Paris',
    'Germany': 'Berlin',
  };
  print(countries['Spain']); // Madrid
  print(countries['Germany']); // Berlin
  print(countries['France']); // Paris

  // С помощью конструктора Map можно создать пустой объект
  // Map и потом добавлять в него объекты:

  // ignore: prefer_collection_literals
  var map3 = Map(); // пустой Map

  map3[-1] = 'Alice';
  map3[474] = 'Bob';
  map3[6] = 'Sam';
  // Добавление нового элемента довольно просто: в квадратных скобках указываем ключ
  // и присваиваем ему какое-либо значение
  print(map3);

  // Каждый элемент в Map фактически представляет объект MapEntry<K, V>, где K - тип ключей,
  // а V - тип значений. У этого типа есть два свойства: key (ключ элемента) и value (хранит значение элемента).
  // Используя свойства, мы можем получить содержимое элементов в Map. Например, переберем все элементы и отдельно все ключи и значения Map:

  mapPrint(map: map3);

  countries = {'Germany': 'Berlin'};
  // addAll(Map<K, V> other): добавляет в Map другой объект Map
  countries.addAll({'France': 'Paris', 'Spain': 'Madrid'}); // добавляем Map
  print(countries);

  // containsKey(Object key): возвращает true, если Map содержит ключ key
  print(countries.containsKey('Poland')); // false
  print(countries.containsKey('France')); // true

  // containsValue(Object value): возвращает true, если Map содержит значение value
  print(countries.containsValue('Madrid')); // true

  // remove(Object key): удаляет из Map элемент с ключом key

  countries.remove('Spain'); // удаляем элемент с ключом 'Spain'
  print(countries.containsKey('Spain')); // false
  print(countries.containsValue('Madrid')); // false

  countries.clear(); // удаляем все элементы
  print(countries);
}

// Напишем отдельную функцию

void mapPrint({required map}) {
  // перебор всех элементов
  print('================================');
  print('All items');
  print('================================');
  for (var item in map.entries) {
    // item представляет MapEntry<K, V>
    print('${item.key} - ${item.value}');
  }
  print('================================');
  // перебор ключей
  print('Keys');
  print('================================');
  for (var key in map.keys) {
    print(key);
  }
  print('================================');
  // перебор значений
  print('Values');
  print('================================');
  for (var value in map.values) {
    print(value);
  }
  print('================================');
}

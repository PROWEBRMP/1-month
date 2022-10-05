import 'dart:math';

void main(List<String> arguments) {
  var list = [1, 2, 3242, 322, 1, 2, 3];
  // Метод reversed грубо говоря переворачивает лист, или же инвертирует его
  print(list.reversed);

  // Метод isEmpty возвращает true если массив пустой, и false если нет
  print(list.isEmpty);

  // Метод sort возвращает сортированный лист
  list.sort();
  print(list);

  // Метод sublist возвращает часть листа
  print(list.sublist(3, 6));

  // Метод contins возвращает true если элемент нашелся в листе и false если наоборот
  print(list.contains(3));
  print(list.contains('3'));

  // Метод join склеивает все элементы листа по символу, который туда передали, и возвращает
  // эту строку
  print(list.join(''));
  print(list.join('@'));
  print('');

  //  Set представляет неупорядоченный набор уникальных объектов.
  //  Для создания Set применяются фигурные скобки {}:

  Set set = {};
  print(set);
  // Сеты в отличии от листов создаюстя с помощью {}

  // эквивалентные определения Set
  Set<int> set1 = {1, 2, 3, 5};
  var set2 = <int>{1, 2, 3, 5};
  Set<int> set3 = <int>{1, 2, 3, 5};

  // Для перебора можно использовать цикл for/in
  var intSet = {1, 2, 3, 5};

  for (var n in intSet) {
    print(n);
  }

  var stringSet = {"Tom", "Alice", "Kate"};
  for (var s in stringSet) {
    print(s);
  }

  // Отличительной особенностью наборов является то, что они содержать только уникальные значения,
  // то есть мы не можем добавить одни и те ж значения в набор несколько раз:

  var set4 = {1, 2, 3, 5};
  set4.add(3); // добавляем один элемент - 3
  set4.addAll({4, 5}); // добавляем другой набор - {4, 5}
  for (var n in set4) {
    print(n); // 1 2 3 5 4
  }

  print('');

  // Примеры некоторых методов
  var set5 = {-3, -1, 2, 4, 5, 7};
  // получим первый элемент
  print(set5.first); // -3
  // получим последний элемент
  print(set5.last); // 7
  // получим длина набора
  print(set5.length); // 6

  // добавим набор
  set5.addAll({4, 2, 6});

  // соединим элементы списка в строку, разделитель запятая
  print(set5.join(", ")); // -3, -1, 2, 4, 5, 7, 6

  // удалим число 4
  set5.remove(4);

  print(set5.join(", ")); // -3, -1, 2, 5, 7, 6

  // получим элементы больше  2
  set5 = set5.where((element) => element > 2).toSet();
  print(set5.join(", ")); // 5, 6, 7
  print('');
  print(set5);
  print('');
  // union() возвращает объединение двух наборов
  print('');
  print(set5.union(set1));
  // difference возвращает разность текущего набора и набора other в виде другого набора
  print(set5.difference(set1));
  print('');
 
  print(set5.intersection(set1)); // intersection возвращает пересечения текущего набора и набора other в виде другого набора
  print('');

  // Метод split() разбивает строку на элементы листа

  var str = '011';
  print(str.split(''));

  // Используя текушие знания проверить является ои строка палиднромом

  if (str == str.split('').reversed.join('')) {
    print('Строка $str - палиндром');
  } else {
    print('Строка $str - не палиндром');
  }
}

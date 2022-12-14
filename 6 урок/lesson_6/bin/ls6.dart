import 'dart:math';

void main(List<String> arguments) {
  // Листы обьявляются через ключевое слово List
  List myList = [];
  print(myList);
  // Также мы можем явно указать тип:
  List<int> list = [1, 2, 3];

  // В других ЯП листы аналогичны массивам
  var list2 = [1, 'string', 2323, 31, true];
  list2.add(11);
  print(list2);
  print('');
  // Ключевое слово length возвращает длину листа
  print(list2.length);
  // Ключевое слово first возвращает значение первого элемента
  print(list2.first);
  // Ключевое слово last возвращает значение последнего элемента
  print(list2.last);
  print('');
  // Так же можно получить значение любого элемента используя []
  // Все элементы листа упорядоченны по индексу(по порядку) от 0
  // То есть если нам нужно получить значение 3го элемента, то в
  // квадратных скобках мы укажем 4, если 1го, то 0 и тд
  print(list2[2]);
  print(list2[0]);
  // Так же мы можем и менять значение листа по индексу
  list2[0] = 'Новое значение';
  print('${list2[0]}\n');
  // Если мы попытаемся получить данные элемента которого нет, то получим ошибку
  // print(list[5]);

  // Некоторые методы листов:

  //  add(E value): добавляет элемент в конец списка
  list2.add('Добавили элемент');
  print(list2);
  print('');

  //  addAll(Iterable<E> iterable): добавляет в конец списка другой список
  list2.addAll(list);
  print(list2);
  print('');

  //  clear(): удаляет все элементы из списка
  // list2.clear();
  // print(list2);

  //  indexOf(E element): возвращает первый индекс элемента
  print('Индекс элемента 2323 равен ${list2.indexOf(2323)}\n');

  //  insert(int index, E element): вставляет элемент на определенную позицию
  list2.insert(2, 'Вставили новый элемент');
  list2.insert(2, 'Вставили новый элемент');
  print(list2);
  print('');

  //  remove(Object value): удаляет объект из списка (удаляется только первое вхождение элемена в список)
  list2.remove('Вставили новый элемент');
  print(list2);
  print('');

  // removeAt(int index): удаляет элементы по индексу
  list2.removeAt(0);
  list2.removeAt(0);
  list2.removeAt(0);
  print(list2);
  print('');

  // removeLast(): удаляет последний элемент списка
  list2.removeLast();
  list2.removeLast();
  list2.removeLast();
  print(list2);
  print('');

  // Задание: попробовать вывести весь лист используя цикл for
  // Решение:
  for (var i = 0; i < list2.length; i++) {
    print(list2[i]);
  }
  print('');

  // Однако есть и другой способ вывести этот массив
  // Для этого мы воспользуемся циклом forEach
  list2.forEach((item) {
    print(item);
  });
  print('');
  // item - принимает в себя значение каждого элемента.
  // Так что цикл сам пройдется по всем элементам листа

  // Помимо цикла forEach существует цикл for/in

  for (var item in list2) {
    print(item);
  }
  print('');
  // Здесь item - принимает в себя значение кажлого элемента, так же как и в forEach.

  // Списки могут быть фиксированными (с жестко определенным размером) и нефиксированные
  // (могут увеличиваться в размерах). Примеры создания нефиксированных списков мы уже рассмотрели
  // теперь же рассмотрим создание фиксированных списков

  // Для этого воспользуемся сдедующим синтаксисом List.filled(количество_элементов, значение_по_умолчанию)

  var list3 = List.filled(4, 2); // фиксированный список [2, 2, 2, 2]
  print(list3);
  list3[1] = 7;
  list3[2] = 11;
  list3[0] = 3;
  list3[3] = 15;
  //list1.add(1); // нельзя добавить новый элемент
}

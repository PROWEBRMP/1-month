// ДОМАШНЕЕ ЗАДАНИЕ ПО УРОКУ 4

import 'dart:math';
// Задание №1
// // С помощью оператора цикла for, разработать программу, которая будет выводить таблицу умножения числа, которое ввел пользователь.
// // =================================================================================================================================

// // Задание №2
// // Составить программу, которая будет печатать ромб одним из значков (* или + или #)
// // Выбор значков организовать оператором switch.
// // =================================================================================================================================
void main(List<String> args) {
//   // Решение 1го Дз
//   // ==============================================================================================================================
//   var num = 5; // Число пользователя

//   for (var i = 1; i <= 10; i++) {
//     print('$i * $num = ${i*num}');
//   }

//   print('');

  // Решение 2го Дз
  // ==============================================================================================================================
  var height = 11; // Высота ромба
  var width = 11; // Ширина ромба

  var pos = 0; // Позиция от центра
  var result = ''; // Результат вывода
  var symbol = ''; // Cимвол из которого будет состоять ромб
  var randomNum = Random().nextInt(5); // Рандомное число для выбора символа

  switch (randomNum) {
    // Тут мы проверям наше рандомное число и относительно его
    // выбираем наш символ
    case 0:
      symbol = '+';
      break;
    case 1:
      symbol = '*';
      break;
    case 2:
      symbol = '=';
      break;
    case 3:
      symbol = '0';
      break;
    default:
      symbol = '#';
  }

  for (var y = 0; y < height; y++) {
    // Цикл в котором мы итерируемся по строкам
    for (var x = 0; x < width; x++) {
      // Цикл в котором мы заполняем одну строчку нужными нам символами
      if ((x == width ~/ 2 - pos) || (x == width ~/ 2 + pos)) {
        // В этом условии (width ~/ 2) - это центр ромба по оси х
        // a pos - это отдаление от центра
        result +=
            symbol; // и тут результат мы прибавляем наш символ если нашли нужную нам кординату x
      } else {
        result += ' ';
        // Если же кордината Х нам не подходит, то мы добаляем пробел
      }
    }

    result += '\n'; // В конце каждой строчки добавляем перенос

    if (y < height ~/ 2) {
      // Проверяем дошли ли мы до середины высоты ромба
      pos++;
      // Если не дошли, то прибавляем один к нашему отдалению
    } else {
      pos--;
      // Если дошли, то отнимаем один от нашего отдаления
    }
  }
  print(result);
}

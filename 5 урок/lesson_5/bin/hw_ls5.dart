// ДОМАШНЕЕ ЗАДАНИЕ ПО УРОКУ 4

// Задание №1

// Написать функцию, которая принимает координаты двух клеток шахматной доски.
// После чего в консоль вывести «Ход слона возможен», если действительно слон за 1 ход
// может попасть с первой клетки на вторую. И «Это невозможный ход» если слон за 1 ход
// не может попасть на вторую клетку.
// ======================================================================================

// Задание №1
// Написать функцию, которая принимает целое число, и выводит число ряда Фибоначчи,
// относительно принятого значения.

// Числа Фибоначчи – это последовательность, где первые 2 числа равны 1, а последующие
// равны сумме двух предыдущих

// Первые 6 чисел Фибоначчи (1, 1, 2, 3, 5, 8, 13...);

// ======================================================================================

void main(List<String> args) {
//   print(elephantMove(x1: 1, x2: 1, y1: 5, y2: 5));
//   print(elephantMove(x1: 765, x2: -5, y1: 5, y2: 5));
//   print(elephantMove(x1: 8, x2: 5, y1: 5, y2: 1));

  print(fib(count: 10));
  print(fib(count: 22));
  print(fib(count: 30));
}

String elephantMove({
  required int x1,
  required int x2,
  required int y1,
  required int y2,
}) {
  if (x1 > 8 ||
      x1 < 1 ||
      x2 > 8 ||
      x2 < 1 ||
      y1 > 8 ||
      y1 < 1 ||
      y2 > 8 ||
      y2 < 1) {
    return 'Координаты не корректны';
  }

  // ignore: omit_local_variable_types
  String res = 'Это невозможный ход';

  if ((x1 - x2).abs() == (y1 - y2).abs()) {
    res = 'Ход слона возможен';
  }

  return res;
}

int fib({required int count}) {
  // ignore: omit_local_variable_types
  int res = 1;
  // ignore: omit_local_variable_types
  int num = 1;

  for (var i = 0; i < count; i++) {
    if (i == 0) continue;
    res += num;
    num = res - num;
    // print(res);
  }

  return res;
}

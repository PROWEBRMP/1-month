// ДОМАШНЕЕ ЗАДАНИЕ ПО УРОКУ 5
import 'dart:math';
import 'dart:io';

void main(List<String> args) {
// Создайте лист размером N после чего заполните его 
// случайными элементами от 10 до 99 включительно.
// Вывести лист в 4 колонки или более

  var size = 100;
  var list = [];
  var rand = Random();
  var result = '';

  
  for (var i = 0; i < size; i++) {
    list.add(rand.nextInt(90) + 10);
    result += (i+1) % 10 == 0 ? '${list[i]}\n' : '${list[i]}\t';
  }

  print(result);


// Создайте лист размером 10 после чего заполните его случайными элементами 
// от 10 до 99 включительно. После чего выведите его в консоль, найдите наибольший 
// и наименьший  элемент листа соответственно, поменяйте их местами и снова выведите 
// в консоль лист
  // var list = [];
  // var size = 10;
  // var rand = Random();
  // var min;
  // var max;

  // for (var i = 0; i < size; i++) {
  //   list.add(rand.nextInt(90) + 10);
  //   if (i == 0) {
  //     min = list[0];
  //     max = list[0];
  //   } else {
  //     min = min < list[i] ? min : list[i];
  //     max = max > list[i] ? max : list[i];
  //   }
  // }

  // print(list);

  // var minIn = list.indexOf(min);
  // var maxIn = list.indexOf(max);

  // print('Минимальный элемент - $min\nМаксимальный элемент - $max');

  // list[minIn] = max;
  // list[maxIn] = min;

  // print(list);


}




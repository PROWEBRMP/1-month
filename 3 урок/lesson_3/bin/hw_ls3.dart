// ДОМАШНЕЕ ЗАДАНИЕ ПО УРОКУ 3

/* 
Задание 1
Определить номер четверти плоскости, в которой находится точка с координатами X и Y , при этом произведение X * Y не равно 0.



Решение:

void main(List<String> args) {
  var x = -2;
  var y = -21;

  if((x*y) != 0) {
    if(x > 0 && y > 0) {
      print('Это 1-ая четверть');
    } 
    else if( x < 0 && y > 0) {
      print('Это 2-ая четверть'); 
    } 
    else if (x < 0 && y < 0) {
      print('Это 3-я четверть'); 
    } 
    else {
      print('Это 4-ая четверть'); 
    }
  } else {
    print('Произведение: X * Y = 0 !!!');
  }
}

 */

/* 
Задание 2
Есть некая переменная time, она принимает числа от 0 до 24. Реализовать вывод в консоль следующим образом:
Если переменная равна 10, то вывод будет “Сейчас 10 часов утра”.
Если переменная равна 12, то вывод будет “Сейчас полдень”.
И т.д.
(Реализовать через конструкцию switch / case).

Решение:




void main(List<String> args) {
  var time = 9;  
  var str = 'Сейчас ';
  switch (time) {
    case 0:
    case 24:
      str += 'полночь';
      break;
    case 1:
      str += 'час ночи';
      break;
    case 2:
    case 3:
      str += '$time часа ночи';
      break;
    case 4:
      str += '4 часа утра';
      break;
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
      str += '$time часов утра';
      break;
    case 12:
      str += 'полдень';
      break;
    case 13:
      str += 'час дня';
      break;
    case 14:
    case 15:
    case 16:
      str += '$time часа дня';
      break;
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
      str += '$time часов вечера';
      break;
    default:
      str = 'Вы ввели некорректное значение';
  }
  print(str);
}

*/
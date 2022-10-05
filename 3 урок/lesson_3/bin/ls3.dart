void main(List<String> arguments) {
  // операторы сравнения: ==, !=, <, >,  >=, <=. 
  var a = 3 == 4; // == - проверяет на равенство
  print(a); 
  a = 4 > 1; 
  print(a);
  a = 'Строка' != 'Строка';
  print(a);
  a = 45 < 100;
  print(a);
  a = 45 >= 45;
  print(a);
  a = 99 >= 45;
  print(a);
  a = 21 <= 45;
  print(a);
  a = 45 <= 45;
  print(a);

  // Конструкция if else
  // if в круглых скобках принимает какое-то условие, и проверяют его на истину.
  // И если оно верное, то выполняется код в фигурных скобках 
  var num1 = 8;
  var num2 = 4;
  if(num1 > num2){
    print('Первое число больше второго');
  }
  // Но что, если мы захотим, чтобы при несоблюдении условия 
  // также выполнялись какие-либо действия? 
  // В этом случае мы можем добавить блок else:
  if(num1 > num2){
    print('Первое число больше второго');
  }
  else{
    print('Первое число меньше второго');
  }

  // Но при сравнении чисел мы можем насчитать три состояния: 
  //  1 - первое число больше второго, 
  //  2 - первое число меньше второго 
  //  3 - числа равны. 
  // С помощью выражения else if, мы можем обрабатывать дополнительные условия:

  if(num1 > num2){
    print('Первое число больше второго');
  }
  else if(num1 < num2){
    print('Первое число меньше второго');
  }
  else{
    print('Числа равны');
  }
  
  // Логические операторы: 
  // Используя логические операторы, можно объединить сразу несколько условий:

  // Оператор И (&&) Вернет истину если оба условия верные
  if(num1 > num2 && num1 > 7){
    print('Первое число больше второго И больше 7');
  }

  // Оператор ИЛИ (||) Вернет истину, если хотя бы одно из условий верное
  if(num1 > num2 || num1 < 7){
    print('Первое число больше второго ИЛИ меньше 7');
  }

  // Оператор НЕ (!) Вернет истину, если переданное значение ложное, и наоборот 
  var active = true;

  if(!active){
    print('Передаётся false\n');
  } else {
    print('Передаётся true\n');
  }

  // Конструкция switch/case позволяет обработать сразу несколько условий:
  var num3 = 8;
  // После ключевого слова switch в скобках идет сравниваемое выражение.
  switch(num3){
    // Значение этого выражения последовательно сравнивается со значениями,
    // помещенными после оператора сase. И если совпадение будет найдено, 
    // то будет выполняться определенный блок сase.
    case 1: 
        print('число равно 1');
        break; // Стоит отметить, что в конце блока сase должен идти оператор break
        // Если в конце блока case нет ни одного из этих операторов, тогда мы столкнемся с ошибкой
    case 8: 
        print('число равно 8');
        num3 = num3 + 1;
        break;
    case 9: 
        print('число равно 9');
        break;

    // Если мы хотим также обработать ситуацию, 
    // когда совпадения не будет найдено,
    // то можно добавить блок default    
    default:
        print('число не равно 1, 8, 9');
  }

  // Также мы можем определить одно действие сразу для нескольких блоков case подряд:
  var num4 = 3;
  var output = 0;

  switch(num4){
      case 1: 
          output = 3;
          break;
      case 2: 
      case 3: 
      case 4: 
          output = 6;
          break;
      case 5: 
          output = 12;
          break;
      default:
          output = 24;
  }
  print(output);

  // Вместо оператора break можно использовать оператор continue, указав метку для перехода:
  var num5 = 8;
  switch(num5){
     case 9: // метка N9
        print('число равно 9');
        break;            
   O9: case 1: 
        print('число равно 1');
        break;
    case 8: 
        print('число равно 8');
        num5 = num5 + 1;
        continue O9;    // переход на метку N9
    default:
        print('число не равно 1, 8, 9');
  }
  print('');

  // Операторы присваиваниия: 

  dynamic x = 5;
  x += 8; // Тоже самое, что и выражение: x = x + 8
  print(x); 
  x = 5.0;
  x -= 8; // Тоже самое, что и выражение: x = x - 8
  print(x);
  x = 5.0;
  x /= 8; // Тоже самое, что и выражение: x = x / 8
  print(x);
  x = 5;
  x *= 8; // Тоже самое, что и выражение: x = x * 8
  print(x);
  x = 5;
  x ~/= 8; // Тоже самое, что и выражение: x = x ~/ 8
  print(x);

  // Есть выражение с которым сталктвались ранее: num5 = num5 + 1
  // Его можно сократить: 
  num5++; // Это выражение с использованием инкремента (++)
  print(num5);
  // Аналогично с использованием (--) декремента
  num5--; 
  print(num5);

}





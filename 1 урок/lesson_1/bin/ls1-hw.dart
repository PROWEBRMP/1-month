/* Урок 1
  Домашнее задание:




  1. Написать с использованием переменных, программу с выводом в консоль данных студента: Ф.И.О. , возраст: арифметическим примером и несколько предложений о себе.

  
   */

void main(List<String> args) {
  String name = 'Имя'; //написать своё имя
  print(name);
  String lastName = 'Фамилия'; //написать свою фамилию
  print(lastName);
  String second_name = 'Отчество'; //написать своё отчество
  print(second_name);
  int thisYear = 2021; // ввести текущий год
  int birthYear = 2004; //ввести свой год рождения
  int age = thisYear - birthYear; // вычислить свой возраст при помощи арифметики
  print(age);
  String bio ='''Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Cras et eros libero. Nulla arcu justo, fermentum et venenatis vitae, condimentum vel arcu.'''; // написать пару предложений о себе
  print(bio);








// 2. Задание на логику и арифметику.
// Объявляем 2 числа и выводим их в консоль.
// Не используя третью переменную. Поменять значения местами, с помощью арифметики и логики. Результат вывести в консоль. *команду вывода print(), местами не менять*

/* Пример: 
int a = 10;
int b = 5;
print(a);
print(b);
// В консоль будет вывод: 
// 10
// 5

*Ваш код с решением*

print(a);
print(b);
// В консоль будет вывод: 
// 5
// 10

 */





int a = 10;
int b = 5;
print(a);
print(b);

b = a + b;
a = b - a;
b = b - a;
print(a);
print(b);
}








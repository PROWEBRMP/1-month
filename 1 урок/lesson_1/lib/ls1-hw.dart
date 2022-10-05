/* Урок 1
  Домашнее задание:
  Написать с использованием переменных, программу с выводом в консоль данных студента: Ф.И.О. , возраст: арифметическим примером и несколько предложений о себе.

  
   */

void main(List<String> args) {
  String name = 'Имя';
  print(name);
  String lastName = 'Фамилия';
  print(lastName);
  String second_name = 'Отчество';
  print(second_name);
  int thisYear = 2021;
  int birthYear = 2004; //свой год рождения
  int age = thisYear - birthYear;
  print(age);
  String bio = '''
  Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Cras et eros libero. Nulla arcu justo, fermentum et venenatis vitae, condimentum vel arcu.
  ''';
  print(bio);
}
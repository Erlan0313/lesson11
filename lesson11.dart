import 'dart:io';

void main(List<String> args) {
// //   Необходимо написать программу, которая угадывает загаданное пользователем число от 1 до 100,
// // за как можно меньшее количество шагов. Программа выдаёт предполагаемые числа, а пользователь отвечает, больше его число или меньше, чем число на экране.
// // Допустим, пользователь загадал число 32, тогда вывод программы может быть похож на этот:
binarySearch(65);
}

void binarySearch(int a) {
  int min = 1;
  int max = 100;
  int schet = 0;
  int middle = (min + max) ~/ 2;
  print('Инструкция если больше g иначе l');
  stdout.write('Придумай число я угадаю: ');
  int number = int.parse(stdin.readLineSync()!);
  while (true) {
    if (number.runtimeType == int && number > 0 && number <= 100) {
      schet++;
      stdout.write('Is it $middle: ');
      String user = stdin.readLineSync()!;
      if (user == 'l') {
        max = middle - 1;
      } else if (user == 'g') {
        min = middle + 1;
      }
      if (user == 'yes') {
        print('Число которой вы придумали: $number');
        print('Я угадал на $schet попытке');
      }
    } else {
      print('Ошибка! Провертьте ввели ли вы число и является ли оно < 100');
    }
    middle = (min + max) ~/ 2;
  }
}


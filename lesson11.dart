import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  int randomNum = Random().nextInt(5);
  print(randomNum);
  int min = 50;
  int max = 100;
  int randomNum2 = min + Random().nextInt(max - min);
  print(randomNum2);
  task2();
  task3();
  task4();
}

// 1) Выведите на экран сумму двух случайно сгенерированных чисел
task1() {
  int randomNum1 = Random().nextInt(10);
  int randomNum2 = Random().nextInt(10);
  int sum = randomNum1 + randomNum2;
  print(randomNum1);
  print(randomNum2);
  print(sum);
}

// 2) Заполните массив случайными числами, размер массива задайте через
// рандом
task2() {
  List<int> array = [];
  int len = Random().nextInt(20);
  for (int i = 0; i < len; i++) {
    array.add(Random().nextInt(10));
  }
  print(array);
}

// 3)Заполните массив случайными числами в интервале [0,5]. Введите число X
// и найдите все индексы значения, равные X.
task3() {
  List<int> array = [];
  int len = 10;
  for (int i = 0; i < len; i++) {
    array.add(Random().nextInt(10));
  }
  print(array);
  stdout.write('Введите число Х: ');
  int x = int.parse(stdin.readLineSync()!);
  int count = 0;
  for (int i = 0; i < len; i++) {
    if (x == array[i]) {
      print('Индекс схожим с числом Х: $count');
    } else if (count == 0) {
      print('v massive net takogo chisla');
    }
    count++;
  }
}

// 4)Заполните массив случайными числами в интервале [50,100]. Определить,
// есть ли в нем элементы с одинаковыми значениями, стоящие рядом.
task4() {
  int min = 50;
  int max = 100;
  int randomNum2 = min + Random().nextInt(max - min);
  List<int> array = [];
  int len = 10;
  for (int i = 0; i < len; i++) {
    array.add(min + Random().nextInt(max - min));
  }
  print(array);
  int count = 0;
  for (int i = 0; i < len - 1; i++) {
    if (array[i] == array[i + 1]) {
      count++;
      break;
    }
  }
  if (count == 1) {
    print('yes');
  } else {
    print('no');
  }

}

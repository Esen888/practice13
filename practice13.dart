import 'dart:io';
import 'dart:math';

void main() {
  game();
}

void game() {
  int min = 0;
  int max = 100;
  String ans = "";
  int count = 1;
  
  print("выберите режим");
  print("comp guess number == cgn");
  print("user guess number == ugn");
  ans = stdin.readLineSync()!;
  if (ans == "cgn") {
    int mid = ((max + min) / 2).round();
    while (ans != "yes") {
      print("твое число $mid?");
      ans = stdin.readLineSync()!;

      if (ans == "less") {
        max = mid;
        mid = (max + min) ~/ 2;
        count++;

        print(" твое число $mid?");
      } else if (ans == "greater") {
        min = mid;
        mid = ((max + min) / 2).round();
        count++;
      } else if (ans == "yes") {
        print("конец игры");

        count++;
      } else {
        print("Вы ввели некор данные");
        ans = stdin.readLineSync()!;
      }
    }
    print("вы ввели $count чисел");
    print(" твое число $mid!");
  }
  int ansNumber;
  if (ans == "ugn") {
    print("Угадай число)");
    int randomNumber = Random().nextInt(100);

    int ansNumber = int.parse(stdin.readLineSync()!);
    while (ansNumber != randomNumber) {
      

      if (ansNumber > randomNumber) {
        print("less");
        count++;
        ansNumber = int.parse(stdin.readLineSync()!);
      } else if (ansNumber < randomNumber) {
        print("greater");
        count++;
        ansNumber = int.parse(stdin.readLineSync()!);
      } else {
        print("Вы ввели некор данные");
        ansNumber = int.parse(stdin.readLineSync()!);
      }
    }
     print("конец игры я загадал $randomNumber");
     print("Вы ввели $count чисел");
  }
}

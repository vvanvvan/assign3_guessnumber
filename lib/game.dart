import 'dart:math';

class Game {
  //ชื่อclass ใช้upper camel case
  static const maxRandom = 100;
  int? myanswer; //ตั้งชื่อตัวแปรเป็นprivate packageคือใส่ _ ข้างหน้าตัวแปร
  var count;

  Game() {
    var r = Random();
    myanswer = r.nextInt(maxRandom) + 1;
    count = 0;
  }

  int doGuess(int num) {
    count++;
    if (num > myanswer!) {
      return 1;
    } else if (num < myanswer!) {
      return -1;
    } else {
      return 0;
    }
  }
}

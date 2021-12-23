// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math';
import 'game.dart';

void main() {
  const maxRandom = 100;

  var game = Game();
  var answer = game.myanswer;
  var guessCount = 0;
  var isCorrect = false;

  print('answer is $answer');

  print('╔════════════════════════════════════════');
  print('║            GUESS THE NUMBER            ');
  print('╟────────────────────────────────────────');

  do {
    stdout.write('║ Guess the number between 1 and $maxRandom: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);

    if (guess == null) {
      continue;
    }

    var result = game.doGuess(guess);
    guessCount = game.count;

    if (result == 1) {
      print('║ ➜ $guess is TOO HIGH! ▲');
      print('╟────────────────────────────────────────');
    } else if (result == -1) {
      print('║ ➜ $guess is TOO LOW! ▼');
      print('╟────────────────────────────────────────');
    } else {
      print('║ ➜ $guess is CORRECT 💙, total guesses: $guessCount');
      print('╟────────────────────────────────────────');
      isCorrect = true;
    }
  } while (!isCorrect);

  print('║                 THE END                ');
  print('╚════════════════════════════════════════');

  if (isCorrect == true) {
    playGame();
  }
}

void playGame() {
  var isPlay = false;

  do {

      stdout.write('Play again? (Y/N): ');
      var playagain = stdin.readLineSync();

      if (playagain == 'Y' || playagain == 'y') {
        isPlay = true;
        main();
      } else if (playagain == 'N' || playagain == 'n') {
        isPlay = true;
        print('❆ Merry⭐ Christmas ❆');
        print('❤❤❤❤ Goodbye☁, Have a nice day! ❤❤❤❤');
      } else {
        continue;
      }

  } while (!isPlay);


}

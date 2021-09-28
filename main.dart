import 'dart:io';

import 'dart:math';

enum Move { rock, paper, scissors }
void main() {
  print('Welcome to Rock-Paper-Scissors Game');
  final random = Random();
  final randomNumber = random.nextInt(3);
  final aiMove = Move.values[randomNumber];

  //print(randomNumber);
  //print(aiMove);

  while (true) {
    stdout.write('Rock, Paper, Scissors as r/p/s ');
    final input = stdin.readLineSync();

    if (input == 'r' || input == 'p' || input == 's') {
      var playerMove;
      if (input == 'r') {
        playerMove = Move.rock;
      } else if (input == 'p') {
        playerMove = Move.paper;
      } else if (input == 's') {
        playerMove = Move.scissors;
      }
      if (playerMove == aiMove) {
        print("It's draw");
      } else if (playerMove == Move.rock && aiMove == Move.scissors ||
          playerMove == Move.paper && aiMove == Move.rock ||
          playerMove == Move.scissors && aiMove == Move.paper) {
        print("You Win");
      } else {
        print("You Lose");
      }

      print('Selected: $input');
    } else if (input == 'q') {
      break;
    } else {
      print('invalid ');
    }
  }
}

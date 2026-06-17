// import 'dart:io';
// import 'dart:math';

// ///list of item
// List<String> item = ["rock", "paper", "scissors"];

// ///conter of point
// int conterComputer = 0, conterPlayer = 0;

// ///choise player item
// late String choiseComputerItem, choisePlayerItem;
// late int choiseItem;

// /// function of choise
// String funChoiseComputer(List item) {
//   final random = Random();
//   choiseComputerItem = item[random.nextInt(item.length)];
//   return choiseComputerItem;
// }

// String funChoisePlayer(int x) {
//   switch (x) {
//     case 1:
//       choisePlayerItem = 'rock';
//       break;
//     case 2:
//       choisePlayerItem = 'paper';
//       break;
//     case 3:
//       choisePlayerItem = 'scissors';
//       break;
//     default:
//       print("enter 1-2-3");
//   }
//   return choisePlayerItem;
// }

// void funCounterPoint(String player, String computer) {
//   if (player == computer) {
//     print("Draw");
//   }
//   else if ((player == 'rock' && computer == 'scissors') ||
//       (player == 'paper' && computer == 'rock') ||
//       (player == 'scissors' && computer == 'paper')) {
//     conterPlayer++;
//     print("Player win");
//   } else {
//     conterComputer++;
//     print("Computer win");
//   }
// }

// // void main() {
// //   print("enetr your coise");
// //   choiseItem = int.parse(stdin.readLineSync()!);
// //   String ch = funChoiseComputer(item);
// //   String cp = funChoisePlayer(choiseItem);
// //   print("cmputer :${ch}");
// //   print("player :${cp}");
// //   funCounterPoint(cp, ch);
// //   print("point cum : ${conterComputer}");
// //   print("point ply : ${conterPlayer}");
// // }

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:r_p_s_app/model.dart';

String funChoiseComputer(List item) {
  String choiseComputerItem;
  final random = Random();
  choiseComputerItem = item[random.nextInt(item.length)];
  return choiseComputerItem;
}

int funCounterPoint(String player, String computer, PointeModel points) {
  if (player == computer) {
    return 0;
  } else if ((player == 'rock' && computer == 'scissors') ||
      (player == 'paper' && computer == 'rock') ||
      (player == 'scissors' && computer == 'paper')) {
    points.conterPointPlayer++;
    return 1;
  } else {
    points.conterPointComputer++;
    return -1;
  }
}

String funImageComputer(String choise) {
  if (choise == "rock") {
    return "assets/images/rock.png";
  }
  else if(choise == "paper")
  {
return "assets/images/paper.png";
  }
  else {
     return "assets/images/scissors.png";
  }
}


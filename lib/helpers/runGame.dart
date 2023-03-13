import "dart:io";
import 'package:tic_tac_toe__dart/entities/Player.dart';
import 'package:tic_tac_toe__dart/entities/TicTacToeTable.dart';
import 'package:tic_tac_toe__dart/helpers/outPutHelpers.dart';
import 'package:tic_tac_toe__dart/helpers/validationHelpers.dart';

void runGame() {
  bool isProgramWork = true;
  int counter = 0;
  TicTacToeTable ticTacToe = TicTacToeTable();
  Player firstPlayer = Player('0');
  Player secondPlayer = Player('X');
  
  while (isProgramWork) {
    if (counter == 0) {
      counter++;
      printRules(firstPlayer, secondPlayer);
    }

    printUserInfo(ticTacToe, counter);

    String coordinateY = enterCoordinate("Y");
    String coordinateX = enterCoordinate("X");

    if (!checkCoordinates(coordinateY, coordinateX)) {
      continue;
    }

    if (
      !ticTacToe.move(
        coordinateX,
        coordinateY,
        selectSymbolOfCurrentPlayer(counter, firstPlayer, secondPlayer)
      )
    ) {
      continue;
    }

    if (printWinnerInfo(ticTacToe)) {
      isProgramWork = false;
    }

    counter++;
    print("\n\n");
  }
}

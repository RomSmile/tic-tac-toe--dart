import 'dart:io';
import 'package:tic_tac_toe__dart/entities/Player.dart';
import 'package:tic_tac_toe__dart/entities/TicTacToeTable.dart';

void printRules(Player firstPlayer, Player secondPlayer) {
  print("Rules:\nFirst Player - ${firstPlayer.moveSymbol}\nSecond player - ${secondPlayer.moveSymbol}\n");
}

void printUserInfo(TicTacToeTable table, int counter) {
  print(
    "${counter % 2 == 0 ? 'Second player:' : 'first player:'}Enter the coordinates of your move\n"
  );

  table.outputInfo();
}

String enterCoordinate(String coordinate) {
  print("\nCoordinate $coordinate: \n");
  return stdin.readLineSync()!;
}

bool printWinnerInfo(TicTacToeTable table) {
  int winner = table.whoIsWinner();

  if (winner != 0) {
    table.outputInfo();
    print("Winner is $winner player");
    return true;
  }

  return false;
}

String selectSymbolOfCurrentPlayer(int counter, Player firstPlayer, Player secondPlayer) {
  return counter % 2 == 0 ? secondPlayer.moveSymbol : firstPlayer.moveSymbol;
}

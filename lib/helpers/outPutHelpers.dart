import 'dart:io';
import 'package:tic_tac_toe__dart/entities/Player.dart';
import 'package:tic_tac_toe__dart/entities/TicTacToeTable.dart';

void printRules(Player firstPlayer, Player secondPlayer) {
  print("Rules:\nFirst Player - ${firstPlayer.moveSymbol}\nSecond player - ${secondPlayer.moveSymbol}");
  print("Coordinate X - number of raw\nCoordinate Y - number of column\n");
}

void printUserInfo(TicTacToeTable table, int counter) {
  table.outputInfo();
  print("\n");
  print(
    "${counter % 2 == 0 ? 'Second player: ' : 'First player: ' }Enter the coordinates of your move\n"
  );
}

String enterCoordinate(String coordinate) {
  print("\nCoordinate $coordinate: \n");
  return stdin.readLineSync()!;
}

bool printWinnerInfo(TicTacToeTable table) {
  int winner = table.whoIsWinner();

  if (winner != 0) {
    table.outputInfo();
    print("\nWinner is $winner player");
    return true;
  }

  return false;
}

String selectSymbolOfCurrentPlayer(int counter, Player firstPlayer, Player secondPlayer) {
  return counter % 2 == 0 ? secondPlayer.moveSymbol : firstPlayer.moveSymbol;
}

class TicTacToeTable {
  List<List<String>> table = [
    [' ', ' ', ' '],
    [' ', ' ', ' '],
    [' ', ' ', ' ']
  ];

  void outputInfo() {
    table.forEach((element) {
      print(element.join('|'));
    });
  }

  int checkSymbolOfWinner(String symbol) {
    if (symbol == 'X') {
      return 2;
    } else if (symbol == '0') {
      return 1;
    }

    return 0;
  }

  bool move(String coordinateX, String coordinateY, String playerSymbol) {
    if (table[int.parse(coordinateX) - 1][int.parse(coordinateY) - 1] == ' ') {
      table[int.parse(coordinateX) - 1][int.parse(coordinateY) - 1] = playerSymbol;
      return true;
    } else {
      print(Exception("This coordinates already use"));
      return false;
    }
  }

  int whoIsWinner() {
    String checkedSymbol = '';

    //checking columns
    for (int i = 0; i < 3; i++) {
      if (table[1][i] == ' ') {
        continue;
      }
      if (table[1][i] == table[0][i] && table[1][i] == table[2][i]) {
        checkedSymbol = table[1][i];
        if (checkedSymbol == ' ') {
          checkedSymbol = '';
          continue;
        } else {
          break;
        }
      } else {
        checkedSymbol = '';
      }
    }

    if (checkSymbolOfWinner(checkedSymbol) != 0) {
      return checkSymbolOfWinner(checkedSymbol);
    }

    //checking raws
    for (int i = 0; i < 3; i++) {
      if (table[i][1] == ' ') {
        continue;
      }
      if (table[i][0] == table[i][1] && table[i][1] == table[i][2]) {
        checkedSymbol = table[i][1];
        if (checkedSymbol == ' ') {
          checkedSymbol = '';
          continue;
        } else {
          break;
        }
      }
    }

    if (checkSymbolOfWinner(checkedSymbol) != 0) {
      return checkSymbolOfWinner(checkedSymbol);
    }

    if (table[0][0] == table[1][1] && table[0][0] == table[2][2]) {
      checkedSymbol = table[1][1];
    }

    if (checkSymbolOfWinner(checkedSymbol) != 0) {
      return checkSymbolOfWinner(checkedSymbol);
    }

    if (table[0][2] == table[1][1] && table[0][2] == table[2][0]) {
      checkedSymbol = table[1][1];
    }

    if (checkSymbolOfWinner(checkedSymbol) != 0) {
      return checkSymbolOfWinner(checkedSymbol);
    }

    return 0;
  }

  bool isDraw(int counter) {
    if (counter >= 9) {
      return true;
    } else {
      return false;
    }
  }
}

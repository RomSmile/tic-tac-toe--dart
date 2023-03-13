bool checkCoordinates(String coordinateY, String coordinateX) {
  try {
    int firstValue = int.parse(coordinateY);
    int secondValue = int.parse(coordinateX);

    if (firstValue > 3 || firstValue < 1) {
      return false;
    }

    if (secondValue > 3 || secondValue < 1) {
      return false;
    }

    return true;
  } catch (err) {
    print(Exception('You entered not valid numbers'));
    return false;
  }
}

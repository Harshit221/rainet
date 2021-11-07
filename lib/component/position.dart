class Position {
  int x, y;
  Position(this.x, this.y);

  static bool validate(int i, int j) {
    if (i < 0 || i >= 8 || j < 0 || j >= 8) return false;
    return true;
  }
}

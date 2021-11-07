extension ListUtil on List {
  bool containsType(Type t) {
    return any((e) => e.runtimeType == t);
  }
}

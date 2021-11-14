import 'package:flutter/material.dart';

class Highlight {
  Color color;
  Highlight._create(this.color);

  static final Highlight kill = Highlight._create(Colors.red);
  static final Highlight move = Highlight._create(Colors.green);
  static final Highlight none = Highlight._create(Colors.transparent);
}

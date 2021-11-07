import 'package:flutter/cupertino.dart';

abstract class Power {
  String? desc;
  // TODO: Add desc to all extended classes
  @mustCallSuper
  Power(this.desc);
}


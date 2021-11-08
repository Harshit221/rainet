import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomBoxDecoration extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _BoxPainter(onChanged);
  }
}

class _BoxPainter extends BoxPainter {
  _BoxPainter(VoidCallback? onChange) : super(onChange);
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Rect rect = offset & configuration.size!;
    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3
      ..shader = ui.Gradient.linear(
          rect.topCenter, rect.bottomCenter, [Colors.yellow, Colors.cyan]);
    canvas.drawRect(rect, paint);
  }
}

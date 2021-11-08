import 'package:flutter/material.dart';
import 'package:rainet/component/mat.dart';
import 'package:rainet/ui/factory/tile_factory.dart';

class LayoutMat extends StatelessWidget {
  final Mat mat;
  const LayoutMat(this.mat, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
          8,
          (i) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment:
                    i == 7 ? CrossAxisAlignment.start : CrossAxisAlignment.end,
                children: List.generate(
                    8, (j) => TileWidgetFactory.tileWidget(mat()[i][j], size),),
              )),
    );
  }
}

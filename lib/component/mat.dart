import 'package:rainet/component/position.dart';
import 'package:rainet/component/tile.dart';

class Mat {
  late final List<List<Tile>> mat;

  Mat() {
    mat =
        List.generate(8, (i) => List.generate(8, (j) => Tile(Position(i, j))));
    mat[0][3] = ExitTile(Position(0, 3));
    mat[0][4] = ExitTile(Position(0, 4));

    mat[7][3] = ExitTile(Position(7, 3));
    mat[7][4] = ExitTile(Position(7, 4));

  }
}

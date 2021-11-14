import 'package:flutter/widgets.dart';
import 'package:rainet/component/player.dart';
import 'package:rainet/component/position.dart';
import 'package:rainet/component/tile.dart';

class Mat extends ChangeNotifier {
  late final List<List<Tile>> mat;

  Mat() {
    mat =
        List.generate(8, (i) => List.generate(8, (j) => Tile(Position(i, j))));
    mat[0] = List.generate(8, (j) => HomeTile(Position(0, j)));
    mat[7] = List.generate(8, (j) => HomeTile(Position(7, j)));

    mat[1][3] = HomeTile(Position(1, 3));
    mat[1][4] = HomeTile(Position(1, 4));
    mat[6][3] = HomeTile(Position(6, 3));
    mat[6][4] = HomeTile(Position(6, 4));

    mat[0][3] = ExitTile(Position(0, 3));
    mat[0][4] = ExitTile(Position(0, 4));

    mat[7][3] = ExitTile(Position(7, 3));
    mat[7][4] = ExitTile(Position(7, 4));
  }

  void injectPlayer(Player p1, Player p2) {
    mat[0].map((e) {
      if (e is HomeTile) {
        e.injectPlayer(p2);
      }
    });
    mat[1].map((e) {
      if (e is HomeTile) {
        e.injectPlayer(p2);
      }
    });
    mat[6].map((e) {
      if (e is HomeTile) {
        e.injectPlayer(p1);
      }
    });
    mat[7].map((e) {
      if (e is HomeTile) {
        e.injectPlayer(p1);
      }
    });
  }

  List<List<Tile>> call() => mat;
}

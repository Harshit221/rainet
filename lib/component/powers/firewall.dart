import 'package:rainet/component/player.dart';
import 'package:rainet/component/powers.dart';

class FireWall extends Power {
  static FireWall _p1 = FireWall._create(), _p2 = FireWall._create();
  FireWall._create() : super("");

  factory FireWall(Player player, {bool reset = false}) {
    if (reset) {
      _p1 = FireWall._create();
      _p2 = FireWall._create();
    }
    return Power.init(_p1, _p2, player) as FireWall;
  }
}

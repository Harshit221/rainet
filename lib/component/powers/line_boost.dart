import 'package:rainet/component/player.dart';
import 'package:rainet/component/powers.dart';

class LineBoost extends Power {
  static LineBoost _p1 = LineBoost._create(), _p2 = LineBoost._create();
  LineBoost._create() : super("");

  factory LineBoost(Player player, {bool reset = false}) {
    if (reset) {
      _p1 = LineBoost._create();
      _p2 = LineBoost._create();
    }
    return Power.init(_p1, _p2, player) as LineBoost;
  }
}

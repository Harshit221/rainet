import 'package:rainet/component/player.dart';
import 'package:rainet/component/powers.dart';

class Swap extends Power {
  static Swap _p1 = Swap._create(), _p2 = Swap._create();
  Swap._create() : super("");

  factory Swap(Player player, {bool reset = false}) {
    if (reset) {
      _p1 = Swap._create();
      _p2 = Swap._create();
    }
    return Power.init(_p1, _p2, player) as Swap;
  }
}

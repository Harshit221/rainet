import 'package:rainet/component/player.dart';
import 'package:rainet/component/powers.dart';

class VirusChecker extends Power {
  static VirusChecker _p1 = VirusChecker._create(), _p2 = VirusChecker._create();
  VirusChecker._create() : super("");

  factory VirusChecker(Player player, {bool reset = false}) {
    if (reset) {
      _p1 = VirusChecker._create();
      _p2 = VirusChecker._create();
    }
    return Power.init(_p1, _p2, player) as VirusChecker;
  }
}

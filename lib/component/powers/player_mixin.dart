import 'package:rainet/component/player.dart';

mixin PlayerMixin {
  late Player player;
  bool initialised = false;
  void injectPlayer(Player player) {
    if (initialised) {
      throw Exception("Player already injected");
    }
    this.player = player;
    initialised = true;
  }

  bool checkPlayer(Player player) => this.player == player;
}

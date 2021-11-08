import 'package:flutter/cupertino.dart';
import 'package:rainet/component/player.dart';
import 'package:rainet/component/powers/player_mixin.dart';

abstract class Power with PlayerMixin {
  String? desc;
  // ignore: todo
  // TODO: Update desc to all extended classes
  @mustCallSuper
  Power(this.desc);

  static Power init(Power p1, Power p2, Player player) {
    if (p1.checkPlayer(player)) {
      return p1;
    } else if (p2.checkPlayer(player)) {
      return p2;
    } else if (player.id == 0 && !p1.initialised) {
      p1.injectPlayer(player);
      return p1;
    } else if (player.id == 1 && !p2.initialised) {
      p2.injectPlayer(player);
      return p2;
    } else {
      throw Exception("Player not found, make sure player is injected");
    }
  }
}

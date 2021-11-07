import 'package:flutter/widgets.dart';
import 'package:rainet/component/player.dart';
import 'package:rainet/component/powers.dart';
import 'package:rainet/logic/utils.dart';

abstract class Card {
  final Player player;
  // Power? power;
  List<Power> powers = [];
  @mustCallSuper
  Card(this.player);

  bool canInstall(Power p) {
    if (p is FireWall || p is Swap) return false;
    if (powers.containsType(p.runtimeType)) return false;
    return true;
  }
}

class LinkCard extends Card {
  LinkCard(Player player) : super(player);
}

class VirusCard extends Card {
  VirusCard(Player player) : super(player);
}

import 'package:flutter/widgets.dart';
import 'package:rainet/component/cards.dart';
import 'package:rainet/component/highlight/highlights.dart';
import 'package:rainet/component/position.dart';
import 'package:rainet/component/powers.dart';
import 'package:rainet/component/powers/player_mixin.dart';

class Tile extends ChangeNotifier {
  final Position position;
  Tile(this.position);
  Card? card;
  FireWall? fireWall;
  // bool _shouldHighlight = false;
  Highlight highlight = Highlight.none;

  bool canMoveTo() {
    // ignore: todo
    // TODO: update logic to enable move when there is opponent's card or our firewall

    if (card == null || fireWall == null) {
      return true;
    } else {
      return false;
    }
  }

  bool canInstall() {
    return fireWall == null && card == null;
  }

  void install() {}
}

class ExitTile extends Tile {
  ExitTile(Position position) : super(position);

  @override
  bool canInstall() => false;
}

class HomeTile extends Tile with PlayerMixin {
  HomeTile(Position position) : super(position);
}

import 'package:rainet/component/cards.dart';

class Player {
  final int id;
  final String name;
  // int virusCards = 0, linkCards = 0;
  List<VirusCard> virusCards = [];
  List<LinkCard> linkCards = [];

  Player(this.id, this.name);

  @override
  bool operator ==(Object other) {
    if (other is! Player) return false;
    return other.id == id;
  }

  @override
  int get hashCode {
    return id.hashCode;
  }
}

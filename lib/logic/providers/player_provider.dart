import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rainet/component/player.dart';

final player1Provider = ChangeNotifierProvider<Player>((ref) {
  return Player(1)..injectName("Player1");
});

final player2Provider = ChangeNotifierProvider<Player>((ref) {
  return Player(2)..injectName("Player2");
});

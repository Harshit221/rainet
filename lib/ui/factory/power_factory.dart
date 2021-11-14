import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rainet/component/player.dart';
import 'package:rainet/component/powers.dart';

class PowerFactory {
  static Widget powerWidget(Player player, Type type) {
    late IconData icon;
    if (type == FireWall) {
      icon = FontAwesomeIcons.shieldAlt;
    } else if (type == Swap) {
      icon = FontAwesomeIcons.random;
    } else if (type == LineBoost) {
      icon = FontAwesomeIcons.angleDoubleUp;
    } else if (type == VirusChecker) {
      icon = FontAwesomeIcons.searchengin;
    }
    final color = player.id == 1 ? Colors.cyan : Colors.yellow;
    return Builder(
      builder: (context) {
        final size = MediaQuery.of(context).size;
        return Container(
          width: size.width * 0.95 / 8,
          height: size.width * 0.95 / 8,
          decoration:
              BoxDecoration(border: Border.all(color: color), color: color),
          child: Center(
            child: FaIcon(
              icon,
              color: Colors.black,
            ),
          ),
        );
      },
    );
  }
}

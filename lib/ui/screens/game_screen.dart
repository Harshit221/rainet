import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rainet/component/player.dart';
import 'package:rainet/component/powers.dart';
import 'package:rainet/logic/providers.dart';
import 'package:rainet/ui/box_decoration.dart';
import 'package:rainet/ui/factory/power_factory.dart';
import 'package:rainet/ui/screens/layout_mat.dart';
import 'package:tinycolor2/tinycolor2.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Consumer(
          builder: (context, ref, child) {
            final mat = ref.watch(matProvider);
            final p1 = ref.watch(player1Provider);
            final p2 = ref.watch(player2Provider);
            final size = MediaQuery.of(context).size;
            return Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
                decoration: CustomBoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    powerRow(
                        p2,
                        Transform.rotate(
                          angle: pi,
                          child:
                              text("SERVER", Colors.yellow, size.width * 0.1),
                        )),
                    Container(
                      width: size.width * 0.95,
                      // height: size.width * 0.95,
                      margin: EdgeInsets.symmetric(
                          vertical: size.height * 0.01,
                          horizontal: size.width * 0.05 / 4),
                      child: LayoutMat(mat),
                    ),
                    powerRow(p1, text("SERVER", Colors.cyan, size.width * 0.1)),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget powerRow(Player player, Widget textWidget) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            PowerFactory.powerWidget(player, FireWall),
            const SizedBox(
              height: 5,
            ),
            PowerFactory.powerWidget(player, Swap),
          ],
        ),
        textWidget,
        Column(
          children: [
            PowerFactory.powerWidget(player, LineBoost),
            const SizedBox(
              height: 5,
            ),
            PowerFactory.powerWidget(player, VirusChecker),
          ],
        ),
      ],
    );
  }

  Widget text(String t, Color color, double fontSize) {
    return Stack(
      children: [
        Text(
          t,
          style: GoogleFonts.pressStart2p(
            fontSize: fontSize,
            foreground: Paint()
              ..strokeWidth = 5
              ..style = PaintingStyle.stroke
              ..color = color,
          ),
        ),
        Text(
          t,
          style: GoogleFonts.pressStart2p(
            fontSize: fontSize,
            color: TinyColor(color).shade(75).color,
          ),
        )
      ],
    );
  }
}

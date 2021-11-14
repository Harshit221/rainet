import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rainet/component/tile.dart';
import 'package:tinycolor2/tinycolor2.dart';

class TileWidgetFactory {
  static Widget tileWidget(Tile tile, Size size) {
    if (tile is ExitTile) {
      return ExitTileWidget(tile);
    } else if (tile is HomeTile) {
      return HomeTileWidget(tile);
    } else {
      return TileWidget(tile);
    }
  }
}

class ExitTileWidget extends StatelessWidget {
  final ExitTile tile;
  const ExitTileWidget(this.tile, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final margin = size.width * 0.005;
    double height = size.width * 0.95 / 8 - margin * 2;
    height *= 1.4;
    return Container(
      width: size.width * 0.95 / 8 - margin * 2,
      height: height,
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
        border: Border.all(
            color: tile.position.isUpperHalf ? Colors.yellow : Colors.cyan),
        // color: Colors.grey,
      ),
      child: Center(
        child: Transform.rotate(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FaIcon(
                  FontAwesomeIcons.ethernet,
                  color:
                      tile.position.isUpperHalf ? Colors.yellow : Colors.cyan,
                ),
                Text(
                  "EXIT",
                  style: GoogleFonts.pressStart2p(
                    color:
                        tile.position.isUpperHalf ? Colors.yellow : Colors.cyan,
                    fontSize: size.width * 0.02,
                  ),
                ),
              ],
            ),
            angle: tile.position.isUpperHalf ? 0 : pi),
      ),
    );
  }
}

class HomeTileWidget extends StatelessWidget {
  final HomeTile tile;
  const HomeTileWidget(this.tile, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final margin = size.width * 0.005;
    double height = size.width * 0.95 / 8 - margin * 2;
    return Container(
      width: size.width * 0.95 / 8 - margin * 2,
      height: height,
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
        // border: Border.all(color: Colors.white),
        color: tile.position.isUpperHalf
            ? TinyColor(Colors.yellow).darken(20).desaturate().color
            : TinyColor(Colors.cyan).lighten(5).color,
      ),
      child: Center(
        child: Text(
          tile.position.toString(),
        ),
      ),
    );
  }
}

class TileWidget extends StatelessWidget {
  final Tile tile;
  const TileWidget(this.tile, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final margin = size.width * 0.005;
    double height = size.width * 0.95 / 8 - margin * 2;
    return Container(
      width: size.width * 0.95 / 8 - margin * 2,
      height: height,
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
        border: Border.all(
            width: 2,
            color:
                ColorTween(begin: Colors.yellow, end: const Color(0xff1ecbe1))
                    .lerp(tile.position.x / 8.0)!
            //  tile.position.isUpperHalf
            //     ? Colors.yellow
            //     : const Color(0xff1ecbe1),
            ),
        // color: tile.position.isUpperHalf
        //     ? TinyColor(Colors.yellow).lighten(15).color
        //     : TinyColor(Colors.cyan).darken(5).color,
      ),
      child: Center(
        child: Text(
          tile.position.toString(),
        ),
      ),
    );
  }
}

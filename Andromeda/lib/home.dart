import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

Widget home() {
  return Container(
    child: Column(
      children: [
        Container(
            height: 230,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(200, 30),
                bottomRight: Radius.elliptical(200, 30),
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Andromeda",
                style:
                    GoogleFonts.varelaRound(fontSize: 60, color: Colors.white),
              ),
            )),
        Transform(
          transform: Matrix4.translationValues(0, -40, 0),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  children: [
                    tabBar(CryptoFontIcons.BTC, "Buy"),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: VerticalDivider(
                        thickness: 2,
                      ),
                    ),
                    tabBar(Icons.money, "Sell"),
                  ],
                ),
              ),
            ),
          ),
        ),
        listTile(CryptoFontIcons.BTC, "BTC 0.62", "EUR 4500.00", Colors.orange),
        listTile(CryptoFontIcons.ETH, "ETH 0.62", "EUR 4500.00", Colors.grey),
        listTile(CryptoFontIcons.DOGE, "DOGE 150", "EUR 70.00", Colors.yellow),
      ],
    ),
  );
}

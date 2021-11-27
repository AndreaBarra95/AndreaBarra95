// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:http/http.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: new Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: new Icon(Icons.account_balance_wallet), label: "Wallet"),
          BottomNavigationBarItem(
              icon: new Icon(Icons.person), label: "Profile"),
        ],
        backgroundColor: Colors.purple.withOpacity(0.9),
      ),
      body: content(),
    );
  }
}

Widget content() {
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

Widget tabBar(IconData data, String title) {
  return Expanded(
      child: Column(
    children: [Icon(data), Text(title)],
  ));
}

Widget listTile(
    IconData data, String title, String subTitle, Color backgroundColor) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(50, 20, 30, 20),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: ListTile(
        tileColor: Colors.white,
        leading: Container(
          height: 50,
          width: 50,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: backgroundColor),
          child: Icon(data),
        ),
        title: Text(title),
        subtitle: Text(subTitle),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.stacked_line_chart),
            Icon(Icons.info_outline_rounded)
          ],
        ),
      ),
    ),
  );
}

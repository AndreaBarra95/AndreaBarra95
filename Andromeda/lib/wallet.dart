// ignore_for_file: prefer_const_constructors

import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:google_fonts/google_fonts.dart';

Widget wallet() {
  return Column(
    children: [
      Container(
        height: 230,
        decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(200, 30),
                bottomRight: Radius.elliptical(200, 30))),
        child: Align(
            alignment: Alignment.center,
            child: Text(
              "Wallet",
              style: GoogleFonts.varelaRound(fontSize: 60, color: Colors.white),
            )),
      ),
      Transform(
        transform: Matrix4.translationValues(0, -40, 0),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
          child: Container(
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    tabBar(Icons.send, "SEND"),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: VerticalDivider(
                        thickness: 2,
                      ),
                    ),
                    tabBar(Icons.call_received, "RECEIVE")
                  ],
                ),
              )),
        ),
      ),
      Text(
        "Balance",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      SizedBox(
        height: 10,
      ),
      listView(CryptoFontIcons.BTC, "BTC", "52000", Colors.orange),
      listView(CryptoFontIcons.ETH, "ETH", "52000", Colors.grey.shade800),
      listView(CryptoFontIcons.USDT, "USDT", "52000", Colors.green.shade400),
      listView(CryptoFontIcons.DOGE, "DOGE", "52000", Colors.yellow.shade700),
      listView(Icons.add, "Add crypto",
          "You can add a new crypto in this section", Colors.black)
    ],
  );
}

Widget listView(
    IconData icon, String title, String subtitle, Color backgroundColor) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(25, 2, 25, 2),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: ListTile(
        tileColor: Colors.white,
        leading: Container(
          height: double.infinity,
          child: Icon(icon, color: backgroundColor),
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
      ),
    ),
  );
}

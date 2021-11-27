import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
              "My Wallet",
              style: GoogleFonts.varelaRound(fontSize: 60, color: Colors.white),
            )),
      )
    ],
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          BottomNavigationBarItem(icon: new Icon(Icons.home), label: "Profile"),
        ],
        backgroundColor: Colors.white.withOpacity(0.9),
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
            color: Colors.green,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Balance",
                style:
                    GoogleFonts.varelaRound(fontSize: 60, color: Colors.white),
              ),
            ))
      ],
    ),
  );
}

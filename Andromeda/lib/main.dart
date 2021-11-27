// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/wallet.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:http/http.dart';

import 'home.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> widget = [home(), wallet(), Text("coming soon")];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
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
      body: widget.elementAt(selectedIndex),
    );
  }
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

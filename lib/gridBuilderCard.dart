import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(MaterialApp(
    home: Card_Grid_Builder(),
  ));
}

class Card_Grid_Builder extends StatelessWidget {
  Card_Grid_Builder({super.key});

  var icons=[
    Icons.account_balance,
    Icons.ac_unit,
    Icons.accessible_forward,
    Icons.access_alarm_rounded,
    Icons.account_balance_wallet,
    Icons.camera_alt_outlined,
    Icons.dark_mode,
    Icons.edit_calendar,
    Icons.favorite,
    Icons.gamepad,
    Icons.handshake,
    Icons.icecream,
    Icons.kayaking,
    Icons.mail,
    Icons.radar,
    Icons.safety_check,
  ];

var iconName=[
  'account',
  'ac',
  'accessible',
  'access alarm',
  'wallet',
  'camera',
  'dark mode',
  'calendar',
  'favorite',
  'gamepad',
  'handshake',
  'icecream',
  'kayaking',
  'mail',
  'radar',
  'safety'
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Gridex"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.builder(
              itemCount: 16,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 240,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2),
              itemBuilder: (context, index) {
                //var randomNumber=getRandomInt(60000,62000);
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.primaries[index % Colors.primaries.length],
                      borderRadius: BorderRadius.circular(18)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(
                          //IconData(randomNumber, fontFamily: 'MaterialIcons'),
                          icons[index],
                          size: 40,
                          color: Colors.black45,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(iconName[index]),
                            const Text("Icon"),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ));
  }

  //To generate random icon code point in a given range
  // int getRandomInt(int min, int max) {
  //   final random = math.Random();
  //   return min + random.nextInt(max - min + 1);
  // }

}

import 'package:flutter/material.dart';
import 'package:tasksheet_4_3_5/bober_snack_bar.dart';
import 'package:tasksheet_4_3_5/button_bober.dart';
import 'package:tasksheet_4_3_5/card_expand.dart';
import 'package:tasksheet_4_3_5/menu_points.dart';

void main() {
  runApp(const MyBottomSheet());
}

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const Drawer(
          backgroundColor: Colors.blueGrey,
          child: SafeArea(
            child: Column(
              children: [
                Text(
                  "Seitenmenü",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                ),
                MenuPoints(
                  menuText: "Heißer schwarzer Kaffe, junge!",
                  menuIcon: Icons.coffee,
                ),
                MenuPoints(menuText: "Schmecki,Eis!", menuIcon: Icons.icecream)
              ],
            ),
          ),
        ),
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text("Tasksheet 4.3.5"),
          backgroundColor: Colors.lightGreenAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(color: Colors.yellow),
                child: const CardExpand(
                  text: "Lecker Eis",
                  color: Colors.red,
                  icon1: Icons.icecream,
                  icon2: Icons.check,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.yellowAccent),
                child: const CardExpand(
                    text: "Lecker Kuchen",
                    color: Colors.blue,
                    icon1: Icons.cake,
                    icon2: Icons.exposure_minus_1),
              ),
              const SizedBox(
                height: 256,
              ),
              Row(
                children: [
                  const Expanded(child: ButtonBober()),
                  Expanded(
                      child: BoberSnackBar(
                          image: Image.asset("assets/images/bober.jpg"))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tasksheet_4_3_5/bober_snack_bar.dart';

class ButtonBober extends StatelessWidget {
  const ButtonBober({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Column(
              children: [
                const Text(
                  "Germanys next Top-Bober! Kawaiii",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                      color: Colors.deepPurple),
                ),
                const Divider(
                  indent: 16,
                ),
                Image.asset(
                  "assets/images/bober.jpg",
                ),
                ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showMaterialBanner(
                        MaterialBanner(
                          backgroundColor: Colors.grey,
                          content: BoberSnackBar(
                            image: Image.asset("assets/images/bober2.jpeg"),
                          ),
                          actions: [
                            BoberSnackBar(
                              image: Image.asset("assets/images/bober3.jpeg"),
                            )
                          ],
                        ),
                      );
                    },
                    child: const Text("show some more hot Bober´s")),
              ],
            );
          },
        );
      },
      child: const Text("Bober or not?!"),
    );
  }
}

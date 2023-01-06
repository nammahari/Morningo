import 'package:flutter/material.dart';

import '../../Models/Global.dart';

class MainText extends StatelessWidget {
  const MainText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // ignore: prefer_const_literals_to_create_immutables
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SingleChildScrollView(
          child: RichText(
            text: const TextSpan(
              /*defining default style is optional */
              style: TextStyle(fontSize: 124, fontWeight: FontWeight.w800),
              children: [
                // EARLY
                TextSpan(
                  text: ' WAKE UP ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 1, 1, 1),
                    letterSpacing: Global.kletterSpacing,
                    height: 1.4,
                  ),
                ),

                TextSpan(
                  text: "EARLY \n ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(241, 79, 79, 1),
                    letterSpacing: Global.kletterSpacing,
                  ),
                ),
                TextSpan(
                  text: "WITHOUT ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: Global.kletterSpacing,
                  ),
                ),
                TextSpan(
                  text: "\n ALARM",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 251, 176, 2),
                    letterSpacing: Global.kletterSpacing,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

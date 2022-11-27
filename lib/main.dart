// @dart=2.9
import 'package:flutter/material.dart';
import 'package:morningo/popup.dart';
// import 'package:morningo/responsive.dart';
// import 'package:morningo/mobile_body.dart';
// import 'package:morningo/tab_body.dart';
// import 'package:morningo/desktop_body.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Popup(),
    ),
  ));
}

// class HeroPage extends StatefulWidget {
//   const HeroPage({key}) : super(key: key);
//
//   @override
//   State<HeroPage> createState() => _HeroPageState();
// }
//
// class _HeroPageState extends State<HeroPage> {
//   @override
//   Widget build(BuildContext context) {
//     final currentWidth = MediaQuery.of(context).size.width;
//     return const Scaffold(
//       body: Responsive(
//           mobileBody: Mobile(), tabBody: MyTab(), desktopBody: Desktop()),
//     );
//   }
// }
// // COOL _ JARIF!

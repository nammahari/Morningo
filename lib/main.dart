import 'package:google_fonts/google_fonts.dart';
// @dart=2.9
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:morningo/popup.dart';
// import 'package:morningo/responsive.dart';
// import 'package:morningo/mobile_body.dart';
// import 'package:morningo/tab_body.dart';
// import 'package:morningo/desktop_body.dart';
=======
import 'package:gsheets/gsheets.dart';
import 'package:morningo/backend/EmailAPI.dart';
//import 'package:morningo/popup.dart';
// import 'package:morningo/popup.dart';
<<<<<<< HEAD
import 'package:morningo/ResponseAPI/responsive.dart';
import 'package:morningo/DifferentScreenSizes/mobile_body.dart';
import 'package:morningo/DifferentScreenSizes/tab_body.dart';
import 'package:morningo/DifferentScreenSizes/desktop_body.dart';

import 'Models/Global.dart';

// TODO:
// -----
// 1) change the morningo text to manrope (Done)
// 2) text-difference make it a 9 (Done)
// 2.5) Divide all the main work into different screen sizes
// 3) add logo
// 4) add main images
// 5) top page responsiveness (animation, hover animations)
// 6) button responsiveness (animation, hover animations)
// 7) Thank You Opt-In Page. (where there will be share morningo.app link to his friends) Design + Development
// 8) social_share_plugin 2.8 (adding feature that; )
=======
import 'package:morningo/responsive.dart';
import 'package:morningo/mobile_body.dart';
import 'package:morningo/tab_body.dart';
import 'package:morningo/desktop_body.dart';
>>>>>>> 0505b010d304e0dd1939616da28e56e64150c112
>>>>>>> main

Future googleSheetsInit() async {
  final gSheets = GSheets(EmailAPI.credintials);
  final ss = await gSheets.spreadsheet(EmailAPI.spriteSheetID);
  var sheet_ = ss.worksheetByTitle("Users");

  Global.worksheet = sheet_;
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();

<<<<<<< HEAD
  googleSheetsInit();

  runApp(MaterialApp(
    // ignore: unnecessary_const
    theme: ThemeData(textTheme: GoogleFonts.manropeTextTheme()),
    home: const Scaffold(
      body: HeroPage(),
=======
  runApp(const MaterialApp(
    home: Scaffold(
      body:Popup(),
>>>>>>> main
    ),
  ));
}

<<<<<<< HEAD
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
=======
class HeroPage extends StatefulWidget {
  const HeroPage({key}) : super(key: key);

  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Responsive(
        mobileBody: Mobile(),
        tabBody: MyTab(),
        desktopBody: Desktop(),
      ),
    );
  }
}
<<<<<<< HEAD
=======
// COOL _ JARIF!


 // this is the way to do it!
  //final firstColumn = ["hello"];
  //await sheet.values.insertColumnByKey(1, firstColumn);

// final gSheets = GSheets(EmailAPI.credintials);
//   final ss = await gSheets.spreadsheet(EmailAPI.spriteSheetID);
//   var sheet = ss.worksheetByTitle("Users");


// This is not the way to do it!
  //await sheet.values.insertValue("saugatjarif@gmail.com", column: 1, row: 2);
  //var y = await sheet.values.value(column: 2, row: 2);

  // what is the newest values row count?
  // add one, to the next
  //var x = sheet.values.allRows(fromColumn: 1);
  // final firstRow = ['index', 'letter', 'number', 'label'];
  // await sheet.values.insertRow(1, firstRow);
  // // prints [index, letter, number, label]
  // print(await sheet.values.row(1));
>>>>>>> 0505b010d304e0dd1939616da28e56e64150c112
>>>>>>> main

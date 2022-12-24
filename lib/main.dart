import 'package:google_fonts/google_fonts.dart';
// @dart=2.9
import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';
import 'package:morningo/backend/EmailAPI.dart';
//import 'package:morningo/popup.dart';
// import 'package:morningo/popup.dart';
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

// @dart=2.9
Future googleSheetsInit() async {
  final gSheets = GSheets(EmailAPI.credintials);
  final ss = await gSheets.spreadsheet(EmailAPI.spriteSheetID);
  var sheet = ss.worksheetByTitle("Users");
  return sheet;
}

void main() {
  //googleSheetsInit();
  // ignore: unused_local_variable
  final gSheets = GSheets(EmailAPI.credintials);
  // Global.worksheet = gSheets as Worksheet;

  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    // ignore: unnecessary_const
    theme: ThemeData(
        textTheme: GoogleFonts
            .manropeTextTheme()), // Error Fix: Preferences -- Settings -- (Search "Flutter Additional") -->Flutter Addditional Args --> add --no-sound-null-safety
    home: const Scaffold(
      body: HeroPage(),
    ),
  ));
}

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

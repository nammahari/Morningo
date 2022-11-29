// @dart=2.9
import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';
import 'package:morningo/backend/EmailAPI.dart';
import 'package:morningo/popup.dart';
// import 'package:morningo/popup.dart';
import 'package:morningo/responsive.dart';
import 'package:morningo/mobile_body.dart';
import 'package:morningo/tab_body.dart';
import 'package:morningo/desktop_body.dart';

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

  runApp(const MaterialApp(
    home: Scaffold(
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
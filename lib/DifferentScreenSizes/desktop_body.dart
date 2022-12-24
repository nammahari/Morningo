import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:morningo/Models/Global.dart';
import 'package:morningo/components/MainText.dart';
import 'package:morningo/components/NavBar.dart';
import 'package:morningo/components/subscribe.dart';
import '../Models/kTextTheme.dart';
import 'package:gsheets/gsheets.dart';
// import 'package:morningo/popup.dart';
// ignore: import_of_legacy_library_into_null_safe

import "package:hovering/hovering.dart";
import '../backend/EmailAPI.dart';

//Desktop View 🖥
class Desktop extends StatefulWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  State<Desktop> createState() => _DesktopState();
}

late Worksheet sheet;
Future googleSheetsInit() async {
  final gSheets = GSheets(EmailAPI.credintials);
  final ss = await gSheets.spreadsheet(EmailAPI.spriteSheetID);
  sheet = ss.worksheetByTitle("Users")!;
  // Global.worksheet = sheet;
}

class _DesktopState extends State<Desktop> {
  TextEditingController emailController = TextEditingController();

  // ignore: unnecessary_new

  @override
  void initState() {
    super.initState();
    googleSheetsInit();
  }

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    // Main Variables
    String email = "";

    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(left: 30),
        //padding: const EdgeInsets.all(20),
        width: currentWidth,
        height: currentHeight,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              // Paste the class here
              const NavBar(),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  const MainText(),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: currentWidth * 0.02),
                    child: Form(
                      child: Column(
                        children: [
                          const SizedBox(
                            width: 10,
                            height: 10,
                          ),
                          // Subscribe(
                          //   emailController: emailController,
                          //   sheet_: sheet,
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

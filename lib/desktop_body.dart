import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';

import 'backend/EmailAPI.dart';

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
}

class _DesktopState extends State<Desktop> {
  TextEditingController emailController = TextEditingController();

  // ignore: unnecessary_new

  @override
  void initState() {
    // TODO: implement initState
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
        margin: const EdgeInsets.only(top: 120),
        padding: const EdgeInsets.all(20),
        width: currentWidth * 0.60,
        height: currentHeight * 0.60,
        child: Column(
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Wake Up Early without Alarm Using Morningo',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
              height: 50,
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Your Email',
                    ),
                    onChanged: (value) {
                      email = value;
                    },
                  ),
                  const SizedBox(
                    width: 10,
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(30)),
                          elevation: MaterialStateProperty.all(8),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                        ),
                        onPressed: () async {
                          // Email Validation
                          // GoogleSheets API Connect

                          // Adding Email to API
                          final emailRow = [];
                          emailRow.add(emailController.text);
                          //await sheet.values.insertColumnByKey(1, firstColumn);
                          await sheet.values.appendRow(emailRow);
                          // remove the text from the api
                          // send a thank you message. (Email) (EmailJS)
                        },
                        child: const Text(
                          "GET INVITED",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

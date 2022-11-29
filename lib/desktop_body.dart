import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gsheets/gsheets.dart';
import 'package:morningo/popup.dart';
import 'package:social_media_buttons/social_media_button.dart';

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
        margin: const EdgeInsets.only(top: 10, left: 30),
        //padding: const EdgeInsets.all(20),
        width: currentWidth,
        height: currentHeight,
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30),
                  child: const Text(
                    "Morningo",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const SocialMediaButton.instagram(
                        url: "instgram.com/Morningo",
                        color: Colors.orange,
                        size: 30,
                      ),
                      const SocialMediaButton.facebook(
                        url: "Facebook.com/Mornigo",
                        color: Colors.orange,
                        size: 30,
                      ),
                      const SocialMediaButton.linkedin(
                        url: "#linkedin",
                        color: Colors.orange,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Text(
                      //   ' WAKE UP EARLY \n WITHOUT \n ALARM',
                      //   style: TextStyle(
                      //       fontWeight: FontWeight.bold, fontSize: 90),
                      // ),
                      RichText(
                        text: const TextSpan(
                          text: '',
                          /*defining default style is optional */
                          style: TextStyle(fontSize: 120),
                          children: <TextSpan>[
                            // EARLY
                            TextSpan(
                              text: ' WAKE UP ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: "EARLY \n ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 251, 176, 2),
                              ),
                            ),
                            TextSpan(
                              text: "WITHOUT ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: "\n ALARM",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 251, 176, 2),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Text(
                      //   ' Wake Up Early without \n Alarm Using \n Morningo',
                      //   style: TextStyle(
                      //       fontWeight: FontWeight.bold, fontSize: 90),
                      // ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: currentWidth * 0.02, right: currentWidth * 0.70),
                    child: Form(
                      child: Column(
                        children: [
                          // Container(
                          //   margin: const EdgeInsets.symmetric(horizontal: 10),
                          //   child: TextFormField(
                          //     controller: emailController,
                          //     decoration: const InputDecoration(
                          //       border: OutlineInputBorder(),
                          //       hintText: 'Enter Your Email',
                          //     ),
                          //     onChanged: (value) {
                          //       email = value;
                          //     },
                          //   ),
                          // ),
                          const SizedBox(
                            width: 10,
                            height: 10,
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
                                          borderRadius:
                                              BorderRadius.circular(15))),
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color.fromARGB(255, 9, 9, 9)),
                                ),
                                onPressed: () async {
                                  // Email Validation (***)
                                  // GoogleSheets API Connect

                                  // Adding Email to API

                                  // Works
                                  // final emailRow = [];
                                  // emailRow.add(emailController.text);
                                  // await sheet.values.appendRow(emailRow);

                                  // remove the text from the api
                                  // send a thank you message. (Email) (EmailJS)
                                },
                                child: const Text(
                                  "GET IN TOUCH",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

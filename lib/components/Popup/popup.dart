import 'package:flutter/material.dart';
import 'package:morningo/DifferentScreenSizes/mobile_body.dart';
// ignore: import_of_legacy_library_into_null_safe
// import 'package:social_media_buttons/social_media_buttons.dart';

class Popup extends StatefulWidget {
  const Popup({Key? key}) : super(key: key);

  @override
  State<Popup> createState() => _PopupState();
}

class _PopupState extends State<Popup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const Text(
          "Get Updates",
          style: TextStyle(fontSize: 50.0, color: Colors.orange),
        ),
        const Text("Email me,I will not bite you"),
        TextButton(
            onPressed: () {
              const Mobile();
            },
            child: const Text("Email")),
        TextButton(
            onPressed: () {
              const Mobile();
              // Email Validation (***)
              // GoogleSheets API Connect
              //if (EmailAPI.checkEmail(emailController.text)) {
              // Works
              // final emailRow = [];
              // emailRow.add(emailController.text);
              // await sheet.values.appendRow(emailRow);
              //} else {
              // TODO: MAKE A Popup Saying Put Good EMAIL!
              //}
              // Adding Email to API

              // remove the text from the api
              // send a thank you message. (Email) (EmailJS)
            },
            child: const Text("Subscribe")),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            // SocialMediaButton.instagram(
            //   url: "instgram.com/Morningo",
            //   color: Colors.orange,
            // ),
            // SocialMediaButton.facebook(
            //   url: "Facebook.com/Mornigo",
            //   color: Colors.orange,
            // ),
            // SocialMediaButton.linkedin(
            //   url: "#linkedin",
            //   color: Colors.orange,
            // ),
          ],
        ),
      ],
    ));
  }
}

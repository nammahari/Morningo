import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gsheets/gsheets.dart';

// ignore: must_be_immutable
class Subscribe extends StatefulWidget {
  const Subscribe(
      {Key? key,
      required TextEditingController emailController,
      required Worksheet sheet_})
      : super(key: key);

  @override
  State<Subscribe> createState() => _SubscribeState();
}

class _SubscribeState extends State<Subscribe> {
  TextEditingController emailController = TextEditingController();
  late Worksheet sheet;

  String email = "";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 350,
          child: TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.email_outlined),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              filled: true,
              hintStyle: TextStyle(color: Colors.grey[800]),
              hintText: "Enter Your Email",
              labelText: "Email",
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 35),
            ),
            onChanged: (value) {
              email = value;
            },
          ),
        ),
        SizedBox(
          width: 300,
          height: 100,
          child: TextButton(
            style: ButtonStyle(
              // padding: MaterialStateProperty.all(
              //     const EdgeInsets.all(30)),
              //elevation: MaterialStateProperty.all(8),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
              backgroundColor: MaterialStateProperty.all(
                  const Color.fromRGBO(241, 79, 79, 1)),
            ),
            onPressed: () async {
              // Call Popup (Popup())
              // Adding the Previous Functionality
              // Works

              final bool emailValid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(emailController.text);

              if (emailValid) {
                final emailRow = [];
                emailRow.add(emailController.text);
                await sheet.values.appendRow(emailRow);
                // redirect him to a thank you page (have links!)
                // reset the emailController
                emailController.clear();
                setState(() {});
                const snackBar = SnackBar(
                  backgroundColor: Color.fromARGB(255, 54, 244, 133),
                  content: Text('Thank You For Your Email!'),
                );
                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              } else {
                const snackBar = SnackBar(
                  backgroundColor: Colors.red,
                  content: Text('Please Enter Your Email Properly!'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            child: Text(
              "Get Notified",
              style: GoogleFonts.manrope(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

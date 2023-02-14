import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: import_of_legacy_library_into_null_safe

class Popup extends StatefulWidget {
  const Popup({Key? key}) : super(key: key);

  @override
  State<Popup> createState() => _PopupState();
}

class _PopupState extends State<Popup> {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 700,
          height: 500,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(fit:BoxFit.fitHeight,image:AssetImage("img/image.png"),alignment: Alignment.centerRight)
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Get Update Txt
                  Padding(
                    padding: const EdgeInsets.fromLTRB(31.0, 80.0, 0, 0),
                    child: Text(
                      "Get Updates",
                      style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w700,
                        fontSize: 42,
                        color: const Color.fromRGBO(250, 93, 0, 1),
                      ),
                    ),
                  ),
                  //Sizedbox
                  const SizedBox(
                    height: 5,
                  ),
                  //Description Txt
                  Padding(
                    padding: const EdgeInsets.fromLTRB(34.78, 2, 0.0, 0.0),
                    child: Text(
                      "Email Me,I will not Bite You..",
                      style: GoogleFonts.manrope(
                        textStyle: const TextStyle(
                          fontSize: 11.78,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(7, 5, 0, 0.7),
                        ),
                      ),
                    ),
                  ),
                  //Sizedbox
                  const SizedBox(
                    height: 25.04,
                  ),
                  //Email
                  Padding(
                    padding: const EdgeInsets.only(left: 31.78),
                    child: Container(
                      width: 324.08,
                      height: 44.19,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11.05),
                        color: const Color.fromRGBO(217, 217, 217, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 0, 0, 12),
                        child: TextField(
                          style: GoogleFonts.manrope(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Color.fromRGBO(0, 0, 0, 0.5)),
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            hintStyle: GoogleFonts.manrope(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color.fromRGBO(0, 0, 0, 0.5)),
                            ), //google fonts
                          ),
                        ),
                      ),
                    ),
                  ),

                ], //Column children
              ),
            ], //Row Children
          ),
=======
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
            },
            child: const Text("Subscribe")),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SocialMediaButton.instagram(
              url: "instgram.com/Morningo",
              color: Colors.orange,
            ),
            SocialMediaButton.facebook(
              url: "Facebook.com/Mornigo",
              color: Colors.orange,
            ),
            SocialMediaButton.linkedin(
              url: "#linkedin",
              color: Colors.orange,
            ),
          ],
>>>>>>> 0505b010d304e0dd1939616da28e56e64150c112
        ),
      ),
    );
  }
}

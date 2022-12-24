// ignore: file_names
import 'package:flutter/services.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:morningo/Models/Global.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        //SvgPicture.asset("Logo.svg"),
        Container(
          margin: const EdgeInsets.only(left: 30),
          child: Text(
            "MORNINGO",
            style: GoogleFonts.manrope(
              textStyle: const TextStyle(
                fontSize: 45,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: Global.kletterSpacing,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // HoverWidget(
              //   hoverChild: const SocialMediaButton.instagram(
              //     url: "https://www.instagram.com/morningo.inc/",
              //     color: Colors.red,
              //     size: 50,
              //   ),
              GestureDetector(
                onTap: () {
                  FlutterWebBrowser.openWebPage(
                    url: "https://flutter.io/",
                  );
// Fix Web Browser
                  print("E");
                },
                child: HoverWidget(
                  hoverChild: const Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.red,
                    size: 30,
                  ),
                  onHover: (PointerEnterEvent event) {},
                  child: Icon(FontAwesomeIcons.facebook,
                      color: Colors.amber[200], size: 30),
                ),
              )
              //   onHover: (event) {},
              //   child: const SocialMediaButton.instagram(
              //     url: "https://www.instagram.com/morningo.inc/",
              //     color: Colors.orange,
              //     size: 50,
              //   ),
              // ),
              // HoverWidget(
              //   hoverChild: const SocialMediaButton.facebook(
              //     url: "https://www.facebook.com/morningo.official",
              //     color: Colors.red,
              //     size: 50,
              //   ),
              //   onHover: (event) {},
              //   child: const SocialMediaButton.facebook(
              //     url: "https://www.facebook.com/morningo.official",
              //     color: Colors.orange,
              //     size: 50,
              //   ),
              // ),
              // HoverWidget(
              //   hoverChild: const SocialMediaButton.linkedin(
              //     url: "https://www.linkedin.com/company/79843881",
              //     color: Colors.red,
              //     size: 50,
              //   ),
              //   onHover: (event) {},
              //   child: const SocialMediaButton.linkedin(
              //     url: "https://www.linkedin.com/company/79843881",
              //     color: Colors.orange,
              //     size: 50,
              //   ),
              // ),
              // HoverWidget(
              //   hoverChild: const SocialMediaButton(
              //     iconData: Icons.discord_outlined,
              //     url: "https://discord.gg/gVdkmAcxD2",
              //     color: Colors.red,
              //     size: 50,
              //   ),
              //   onHover: (event) {},
              //   child: const SocialMediaButton(
              //     iconData: Icons.discord_outlined,
              //     url: "https://discord.gg/gVdkmAcxD2",
              //     color: Colors.orange,
              //     size: 50,
              //   ),
              // ),
              // ignore: missing_required_param
            ],
          ),
        ),
      ],
    );
  }
}

// Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 // ignore: prefer_const_literals_to_create_immutables
//                 children: [
//                   //SvgPicture.asset("Logo.svg"),
//                   Container(
//                     margin: const EdgeInsets.only(left: 30),
//                     child: Text(
//                       "MORNINGO",
//                       style: GoogleFonts.manrope(
//                         textStyle: const TextStyle(
//                           fontSize: 45,
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                           letterSpacing: kletterSpacing,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(30),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       // ignore: prefer_const_literals_to_create_immutables
//                       children: [
//                         // HoverWidget(
//                         //   hoverChild: const SocialMediaButton.instagram(
//                         //     url: "https://www.instagram.com/morningo.inc/",
//                         //     color: Colors.red,
//                         //     size: 50,
//                         //   ),
//                         GestureDetector(
//                           onTap: () {
//                             print("HE");
//                           },
//                           child: HoverWidget(
//                             hoverChild: const Icon(
//                               FontAwesomeIcons.accusoft,
//                             ),
//                             onHover: (PointerEnterEvent event) {},
//                             child: Icon(FontAwesomeIcons.facebook,
//                                 color: Colors.amber[200]),
//                           ),
//                         )
//                         //   onHover: (event) {},
//                         //   child: const SocialMediaButton.instagram(
//                         //     url: "https://www.instagram.com/morningo.inc/",
//                         //     color: Colors.orange,
//                         //     size: 50,
//                         //   ),
//                         // ),
//                         // HoverWidget(
//                         //   hoverChild: const SocialMediaButton.facebook(
//                         //     url: "https://www.facebook.com/morningo.official",
//                         //     color: Colors.red,
//                         //     size: 50,
//                         //   ),
//                         //   onHover: (event) {},
//                         //   child: const SocialMediaButton.facebook(
//                         //     url: "https://www.facebook.com/morningo.official",
//                         //     color: Colors.orange,
//                         //     size: 50,
//                         //   ),
//                         // ),
//                         // HoverWidget(
//                         //   hoverChild: const SocialMediaButton.linkedin(
//                         //     url: "https://www.linkedin.com/company/79843881",
//                         //     color: Colors.red,
//                         //     size: 50,
//                         //   ),
//                         //   onHover: (event) {},
//                         //   child: const SocialMediaButton.linkedin(
//                         //     url: "https://www.linkedin.com/company/79843881",
//                         //     color: Colors.orange,
//                         //     size: 50,
//                         //   ),
//                         // ),
//                         // HoverWidget(
//                         //   hoverChild: const SocialMediaButton(
//                         //     iconData: Icons.discord_outlined,
//                         //     url: "https://discord.gg/gVdkmAcxD2",
//                         //     color: Colors.red,
//                         //     size: 50,
//                         //   ),
//                         //   onHover: (event) {},
//                         //   child: const SocialMediaButton(
//                         //     iconData: Icons.discord_outlined,
//                         //     url: "https://discord.gg/gVdkmAcxD2",
//                         //     color: Colors.orange,
//                         //     size: 50,
//                         //   ),
//                         // ),
//                         // ignore: missing_required_param
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
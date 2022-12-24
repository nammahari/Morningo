// ignore: file_names
import 'package:flutter/services.dart';

import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:morningo/Models/Global.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);
  void _launchURL(url) async {
    try {
      launch(url);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              GestureDetector(
                onTap: () =>
                    _launchURL("https://www.facebook.com/morningo.official"),
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
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () =>
                    _launchURL("https://www.instagram.com/morningo.inc/"),
                child: HoverWidget(
                  hoverChild: const Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.red,
                    size: 30,
                  ),
                  onHover: (PointerEnterEvent event) {},
                  child: Icon(FontAwesomeIcons.instagram,
                      color: Colors.amber[200], size: 30),
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () =>
                    _launchURL("https://www.linkedin.com/company/79843881"),
                child: HoverWidget(
                  hoverChild: const Icon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.red,
                    size: 30,
                  ),
                  onHover: (PointerEnterEvent event) {},
                  child: Icon(FontAwesomeIcons.linkedin,
                      color: Colors.amber[200], size: 30),
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () => _launchURL("https://discord.gg/gVdkmAcxD2"),
                child: HoverWidget(
                  hoverChild: const Icon(
                    FontAwesomeIcons.discord,
                    color: Colors.red,
                    size: 30,
                  ),
                  onHover: (PointerEnterEvent event) {},
                  child: Icon(FontAwesomeIcons.discord,
                      color: Colors.amber[200], size: 30),
                ),
              ),

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
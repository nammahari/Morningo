import 'package:flutter/material.dart';
import 'package:morningo/Models/Global.dart';
import 'package:morningo/components/MainBody.dart';
import 'package:morningo/components/NavBar.dart';
import 'package:morningo/components/subscribe.dart';

//Desktop View 🖥
class Desktop extends StatefulWidget {
  const Desktop({Key? key}) : super(key: key);
  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  TextEditingController emailController = TextEditingController();

  @override
  void initState() => super.initState();

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

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
              Container(
                  margin: const EdgeInsets.only(left: 30), child: NavBar()),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  const MainBody(),
                  Subscribe(
                    emailController: emailController,
                    sheet_: Global.worksheet,
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

import 'package:flutter/material.dart';
//For Mobile View 👀
class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return const Text("For Mobile");//Scale the code for Mobile pixels ✌
    //Show your Magic here Jariff 😂
  }
}

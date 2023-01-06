// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainImage extends StatelessWidget {
  const MainImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage('images/image_main.png'));
  }
}

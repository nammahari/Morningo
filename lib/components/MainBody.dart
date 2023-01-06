// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:morningo/components/body/MainImage.dart';
import 'package:morningo/components/body/MainText.dart';

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        MainText(),
        SizedBox(
          width: 20,
        ),
        // ignore: avoid_unnecessary_containers
        SizedBox(width: 550, height: 550, child: MainImage()),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabBody;
  final Widget desktopBody;
  const Responsive(
      {required this.mobileBody,
      required this.tabBody,
      required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return mobileBody;
        }
        if (constraints.maxWidth < 800) {
          return tabBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}

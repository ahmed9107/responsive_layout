import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileView;
  final Widget desktopView;
  const ResponsiveLayout(
      {Key? key, required this.mobileView, required this.desktopView})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 700) {
          return mobileView;
        } else {
          return desktopView;
        }
      },
    );
  }
}

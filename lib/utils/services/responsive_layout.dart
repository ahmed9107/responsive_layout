import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileView;
  final Widget tabletView;
  final Widget desktopView;
  const ResponsiveLayout(
    {Key? key,
    required this.mobileView,
    required this.desktopView,
    required this.tabletView})
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileView;
        } else if (constraints.maxWidth < 1200) {
          return tabletView;
        } else {
          return desktopView;
        }
      },
    );
  }
}

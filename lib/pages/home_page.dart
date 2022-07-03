import 'package:flutter/material.dart';
import 'package:responsive_layout/services/responsive_layout.dart';

import '../widgets/desktop_view.dart';
import '../widgets/mobile-view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileView: MobileView(),
      desktopView: DesktopBody(),
    );
  }
}

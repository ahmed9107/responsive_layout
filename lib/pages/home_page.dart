import 'package:flutter/material.dart';
import 'package:responsive_layout/utils/services/responsive_layout.dart';
import 'package:responsive_layout/views/tablet_view.dart';
import '../views/desktop_view.dart';
import '../views/mobile-view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileView: MobileView(),
      tabletView: TabletView(),
      desktopView: DesktopBody(),
    );
  }
}

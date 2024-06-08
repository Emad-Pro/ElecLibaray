import 'package:elec_lib_app/core/responsive_layout/responsive_layout.dart';
import 'package:flutter/material.dart';

import 'screen/home_mobile_screen.dart';
import 'screen/home_tablet_screen.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileScaffold: (context) => HomeMobileScreen(),
        tabletScaffold: (context) => const HomeTabletScreen());
  }
}

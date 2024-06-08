import 'package:elec_lib_app/core/responsive_layout/responsive_layout.dart';
import 'package:flutter/material.dart';

import 'view/screens/home_mobile_screens.dart';
import 'view/screens/home_tablet_screens.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileScaffold: (context) => HomeMobileScreens(),
        tabletScaffold: (context) => HomeTabletScreens());
  }
}

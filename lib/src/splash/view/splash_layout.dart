import 'package:elec_lib_app/core/responsive_layout/responsive_layout.dart';
import 'package:flutter/material.dart';

import 'screens/splash_mobile_screen.dart';
import 'screens/splash_table_screen.dart';

class SplashLayout extends StatelessWidget {
  const SplashLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileScaffold: (context) => const SplashMobileScreen(),
        tabletScaffold: (context) => const SplashTabletScreen(),
      ),
    );
  }
}

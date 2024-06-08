import 'package:flutter/material.dart';

import '../../../../../core/responsive_layout/responsive_layout.dart';
import 'screens/mobile_login_screen.dart';
import 'screens/tablet_login_screen.dart';

class LoginLayout extends StatelessWidget {
  const LoginLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileScaffold: (context) => const MobileLoginScreen(),
        tabletScaffold: (context) => const TabletLoginScreen());
  }
}

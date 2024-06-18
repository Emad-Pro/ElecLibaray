import 'package:elec_lib_app/core/responsive_layout/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'screens/login_or_register_mobile_screen.dart';
import 'screens/login_or_register_tablet_screen.dart';

class LoginOrRegisterLayout extends StatelessWidget {
  const LoginOrRegisterLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileScaffold: (context) => const LoginOrRegisterMobileScreen(),
      tabletScaffold: (context) => const LoginOrRegisterTabletScreen(),
    );
  }
}

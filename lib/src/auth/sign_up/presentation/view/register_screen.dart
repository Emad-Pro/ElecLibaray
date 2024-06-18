import 'package:elec_lib_app/core/responsive_layout/responsive_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'screens/register_mobile_screen.dart';
import 'screens/register_tablet_screen.dart';

class RegisterLayout extends StatelessWidget {
  const RegisterLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileScaffold: (context) => const RegisterMobileScreen(),
        tabletScaffold: (context) => const RegisterTabletScreen());
  }
}

import 'package:elec_lib_app/core/responsive_layout/responsive_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'screens/sign_up_mobile_screen.dart';
import 'screens/sign_up_tablet_screen.dart';

class SignUpLayout extends StatelessWidget {
  const SignUpLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileScaffold: (context) => const SignUpMobileScreen(),
        tabletScaffold: (context) => const SignUpTabletScreen());
  }
}

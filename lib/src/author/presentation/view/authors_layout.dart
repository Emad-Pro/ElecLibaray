import 'package:elec_lib_app/core/responsive_layout/responsive_layout.dart';
import 'package:flutter/material.dart';

import 'screens/author_mobile_screen.dart';
import 'screens/author_tablet_screen.dart';

class AuthorsLayout extends StatelessWidget {
  const AuthorsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveDevices.isMobile(context)) {
      return const AuthorMobileScreen();
    } else {
      return const AuthorTabletScreen();
    }
  }
}

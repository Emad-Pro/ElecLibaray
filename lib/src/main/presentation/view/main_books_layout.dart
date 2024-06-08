import 'package:elec_lib_app/core/responsive_layout/responsive_layout.dart';
import 'package:flutter/material.dart';

import 'screen/main_books_mobile_screen.dart';
import 'screen/main_books_tablet_screen.dart';

class MainBooksLayout extends StatelessWidget {
  const MainBooksLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileScaffold: (context) => const MainBooksMobileScreen(),
        tabletScaffold: (context) => const MainBooksTabletScreen());
  }
}

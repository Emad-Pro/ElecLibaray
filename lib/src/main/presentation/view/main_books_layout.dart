import 'package:elec_lib_app/core/responsive_layout/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'screen/main_books_tablet_screen.dart';

class MainBooksLayout extends StatelessWidget {
  const MainBooksLayout({super.key});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveDevices.isDesktop(context)) {
      return MainBooksTabletScreen();
    } else {
      return MainBooksTabletScreen();
    }
  }
}

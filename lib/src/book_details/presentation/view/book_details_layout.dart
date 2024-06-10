import 'package:elec_lib_app/core/responsive_layout/responsive_layout.dart';
import 'package:elec_lib_app/src/book_details/presentation/view/screens/book_details_mobile_screen.dart';
import 'package:elec_lib_app/src/book_details/presentation/view/screens/book_details_tablet_screen.dart';
import 'package:flutter/material.dart';

class BookDetailsLayout extends StatelessWidget {
  const BookDetailsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveDevices.isMobile(context)) {
      return const BookDetailsMobileScreen();
    } else {
      return const BookDetailsTabletScreen();
    }
  }
}

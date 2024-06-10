import 'package:elec_lib_app/core/responsive_layout/responsive_layout.dart';
import 'package:elec_lib_app/src/category_details/presentation/view/screens/category_details_mobile_screen.dart';
import 'package:elec_lib_app/src/category_details/presentation/view/screens/category_details_tablet_screen.dart';
import 'package:flutter/material.dart';

class CategoryDetailsLayout extends StatelessWidget {
  const CategoryDetailsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveDevices.isMobile(context)) {
      return const CategoryDetailsMobileScreen();
    } else {
      return const CategoryDetailsTabletScreen();
    }
  }
}

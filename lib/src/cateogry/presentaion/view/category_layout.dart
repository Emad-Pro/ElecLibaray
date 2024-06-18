import 'package:elec_lib_app/core/responsive_layout/responsive_layout.dart';
import 'package:elec_lib_app/src/cateogry/presentaion/view/screens/category_mobile_screen.dart';
import 'package:elec_lib_app/src/cateogry/presentaion/view/screens/category_tablet_screen.dart';
import 'package:flutter/material.dart';

class CategoryLayout extends StatelessWidget {
  const CategoryLayout({super.key});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveDevices.isMobile(context)) {
      return const CategoryMobileScreen();
    } else {
      return const CategoryTabletScreen();
    }
  }
}

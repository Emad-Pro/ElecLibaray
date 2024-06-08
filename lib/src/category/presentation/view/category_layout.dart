import 'package:elec_lib_app/core/responsive_layout/responsive_layout.dart';
import 'package:elec_lib_app/src/category/presentation/view/screens/category_mobile_screen.dart';
import 'package:elec_lib_app/src/category/presentation/view/screens/category_tablet_screen.dart';
import 'package:flutter/material.dart';

class CategoryLayout extends StatelessWidget {
  const CategoryLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileScaffold: (context) => CategoryMobileScreen(),
        tabletScaffold: (context) => CategoryTabletScreen());
  }
}

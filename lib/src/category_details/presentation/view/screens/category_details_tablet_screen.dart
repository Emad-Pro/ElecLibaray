import 'package:flutter/material.dart';

import '../widget/category_details_gridview_tablet.dart';
import '../widget/category_details_header_arch.dart';

class CategoryDetailsTabletScreen extends StatelessWidget {
  const CategoryDetailsTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CategoryDetailsHeaderArch(),
          CategoryDetailsGridViewTablet()
        ],
      ),
    );
  }
}

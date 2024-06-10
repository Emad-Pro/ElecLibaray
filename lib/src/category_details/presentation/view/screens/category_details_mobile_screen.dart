import 'package:flutter/material.dart';

import '../widget/category_details_gridview_mobile.dart';
import '../widget/category_details_header_arch.dart';

class CategoryDetailsMobileScreen extends StatelessWidget {
  const CategoryDetailsMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CategoryDetailsHeaderArch(),
        ),
        SliverToBoxAdapter(
          child: CategoryDetailsMobileGridView(),
        )
      ],
    );
  }
}

List<String> image = [
  "assets/images/image_test/1.png",
  "assets/images/image_test/2.png",
  "assets/images/image_test/3.png",
  "assets/images/image_test/4.png",
  "assets/images/image_test/5.png",
  "assets/images/image_test/6.png",
  "assets/images/image_test/7.png",
  "assets/images/image_test/8.png"
];

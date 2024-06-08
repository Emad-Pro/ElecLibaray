import 'package:flutter/material.dart';

import '../../../../../core/responsive_layout/app_styles.dart';

class BuildCategoryListViewItem extends StatelessWidget {
  const BuildCategoryListViewItem(
      {super.key, required this.imagePath, required this.nameCategory});
  final String imagePath;
  final String nameCategory;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            imagePath,
          ),
        ),
        Text(
          nameCategory,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: getResponsiveFontSize(context, fontSize: 20)),
        )
      ],
    );
  }
}

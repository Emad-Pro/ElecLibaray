import 'package:flutter/material.dart';

import '../responsive_layout/app_styles.dart';

class BuildItemListViewBooks extends StatelessWidget {
  const BuildItemListViewBooks(
      {super.key, required this.colorText, required this.imagePath});
  final Color colorText;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 170,
            width: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagePath,
                fit: BoxFit.fill,
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "A Spark of Ligh",
              style: TextStyle(
                  color: colorText,
                  fontSize: getResponsiveFontSize(context, fontSize: 18)),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "jodi picoult",
              style: TextStyle(
                  color: colorText,
                  fontSize: getResponsiveFontSize(context, fontSize: 16)),
            ),
          )
        ],
      ),
    );
  }
}

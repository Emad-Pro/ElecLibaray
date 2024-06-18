import 'package:flutter/material.dart';

import '../../../../../core/responsive_layout/app_styles.dart';
import '../../../../../core/shape_packge/arc.dart';
import '../../../../../core/shape_packge/shape.dart';

class CategoryDetailsHeaderArch extends StatelessWidget {
  const CategoryDetailsHeaderArch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ShapeOfView(
          shape: ArcShape(
              direction: ArcDirection.outside,
              height: 60,
              position: ArcPosition.bottom),
          child: Container(
            width: double.infinity,
            height: 280,
            decoration: const BoxDecoration(),
            child: const Image(
              image: AssetImage(
                "assets/images/image_test/Rectangle.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            "Fantasy",
            style: TextStyle(
                color: Colors.white,
                fontSize: getResponsiveFontSize(context, fontSize: 30),
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

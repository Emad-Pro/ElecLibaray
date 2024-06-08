import 'package:flutter/material.dart';

import '../../../../../core/shape_packge/arc.dart';
import '../../../../../core/shape_packge/shape.dart';
import '../../../../../core/theme/colors.dart';
import 'listview_header_horizontal_arch.dart';
import 'text_recently_add_horizontal_arch.dart';

class HeaderHorizontalArch extends StatelessWidget {
  const HeaderHorizontalArch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340,
      width: double.infinity,
      child: ShapeOfView(
        shape: ArcShape(
            direction: ArcDirection.Outside,
            height: 50,
            position: ArcPosition.Bottom),
        child: Container(
          color: kBackgroundColorGreen,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextRecentlyAddHorizontalArch(),
              ListViewHeaderHorizontalArch(),
            ],
          ),
        ),
      ),
    );
  }
}

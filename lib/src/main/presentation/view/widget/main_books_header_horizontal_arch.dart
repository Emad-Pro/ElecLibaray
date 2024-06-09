import 'package:flutter/material.dart';

import '../../../../../core/shape_packge/arc.dart';
import '../../../../../core/shape_packge/shape.dart';
import '../../../../../core/theme/colors.dart';
import 'main_books_listview_header_horizontal_arch.dart';
import 'main_books_text_recently_add_widget.dart';

class HeaderHorizontalArch extends StatelessWidget {
  const HeaderHorizontalArch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundColor = Theme.of(context).colorScheme.primary;
    return SizedBox(
      height: 340,
      width: double.infinity,
      child: ShapeOfView(
        shape: ArcShape(
            direction: ArcDirection.Outside,
            height: 50,
            position: ArcPosition.Bottom),
        child: Container(
          color: backgroundColor,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainBooksTextRecentlyAddHorizontalArch(),
              MainBooksListViewHeaderHorizontalArch(),
            ],
          ),
        ),
      ),
    );
  }
}

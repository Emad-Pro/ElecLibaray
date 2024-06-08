import 'package:flutter/material.dart';

import '../theme/colors.dart';
import 'build_book_mark_widget.dart';
import 'build_item_listview_books.dart';

class BuildItemListViewBooksWithWidgetStack extends StatelessWidget {
  const BuildItemListViewBooksWithWidgetStack(
      {super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      width: 100,
      child: Stack(
        children: [
          BuildItemListViewBooks(
            imagePath: imagePath,
            colorText: Theme.of(context).colorScheme.onSurface,
          ),
          Row(
            children: [
              Checkbox(
                value: true,
                onChanged: (value) {},
                activeColor: kBackgroundColorGreen,
              ),
              BuildBookMarkWidget(
                value: true,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

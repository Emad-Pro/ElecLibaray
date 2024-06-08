import 'package:flutter/material.dart';

import 'build_item_listview_header.dart';

class BuildItemListViewBooksWithWidgetStack extends StatelessWidget {
  const BuildItemListViewBooksWithWidgetStack(
      {super.key, required this.widget, required this.imagePath});
  final Widget widget;
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
          widget
        ],
      ),
    );
  }
}

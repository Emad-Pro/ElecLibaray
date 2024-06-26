import 'package:flutter/material.dart';

import '../../../../../core/widget/build_item_listview_books_with_widget_stack.dart';
import '../../../../../core/widget/text_title_group_books.dart';

class MainBooksMyBooksWidget extends StatelessWidget {
  const MainBooksMyBooksWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextTitleGroupBooks(
            titleText: "My books",
            count: 99,
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            height: 240,
            child: ListView.separated(
              itemCount: 4,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return BuildItemListViewBooksWithWidgetStack();
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 10);
              },
            ),
          )
        ],
      ),
    );
  }
}

List<String> images = [
  "assets/images/image_test/5.png",
  "assets/images/image_test/6.png",
  "assets/images/image_test/7.png",
  "assets/images/image_test/4.png",
];

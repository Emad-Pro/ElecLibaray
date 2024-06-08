import 'package:flutter/material.dart';

import '../../../../../core/widget/build_book_mark_widget.dart';
import 'build_item_listview_books_with_widget_stack.dart';
import 'my_books_widget.dart';

class MyWashlistWidget extends StatelessWidget {
  const MyWashlistWidget({
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
            titleText: "Washlist",
            count: 3,
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            height: 200,
            child: ListView.separated(
              itemCount: images.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return BuildItemListViewBooksWithWidgetStack(
                  widget: BuildBookMarkWidget(
                    value: false,
                    onPressed: () {},
                  ),
                  imagePath: images[index],
                );
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
  "assets/images/image_test/8.png",
  "assets/images/image_test/9.png",
  "assets/images/image_test/10.png",
];

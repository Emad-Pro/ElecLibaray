import 'package:flutter/material.dart';

import 'build_category_listview_item.dart';
import 'my_books_widget.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
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
            count: null,
            titleText: 'Categories',
          ),
          GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200),
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: BuildCategoryListViewItem(
                    imagePath: categoryList[index],
                    nameCategory: categoryText[index],
                  ),
                );
              })
        ],
      ),
    );
  }
}

List<String> categoryList = [
  "assets/images/image_test/16.png",
  "assets/images/image_test/15.png",
  "assets/images/image_test/14.png",
  "assets/images/image_test/13.png",
  "assets/images/image_test/12.png",
  "assets/images/image_test/11.png"
];
List<String> categoryText = [
  "Fiction",
  "Fantasy",
  "Young Adult",
  "Crime",
  "Romance",
  "Horror"
];

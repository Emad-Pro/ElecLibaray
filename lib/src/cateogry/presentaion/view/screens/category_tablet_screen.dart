import 'package:flutter/material.dart';

import '../../../../main/presentation/view/widget/main_books_build_category_listview_item.dart';
import '../../../../main/presentation/view/widget/main_books_category_widget.dart';

class CategoryTabletScreen extends StatelessWidget {
  const CategoryTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 150,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15),
                  itemBuilder: (context, index) =>
                      MainBooksBuildCategoryListViewItem(
                          imagePath: categoryList[index],
                          nameCategory: categoryText[index])),
            ),
          ),
        )
      ],
    );
  }
}

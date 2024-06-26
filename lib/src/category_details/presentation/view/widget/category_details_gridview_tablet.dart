import 'package:flutter/material.dart';

import '../../../../../core/widget/build_item_listview_books_with_widget_stack.dart';
import '../../../../../core/widget/text_title_group_books.dart';
import '../screens/category_details_mobile_screen.dart';

class CategoryDetailsGridViewTablet extends StatelessWidget {
  const CategoryDetailsGridViewTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextTitleGroupBooks(
            titleText: "Books",
            count: 3,
          ),
          GridView.builder(
              itemCount: 8,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisExtent: 250,
                  maxCrossAxisExtent: 200,
                  childAspectRatio: .5,
                  crossAxisSpacing: 10),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(12),
                  child: BuildItemListViewBooksWithWidgetStack(),
                );
              }),
        ],
      ),
    );
  }
}

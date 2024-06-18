import 'package:flutter/material.dart';

import '../../../../../core/widget/build_item_listview_books_with_widget_stack.dart';
import '../../../../../core/widget/text_title_group_books.dart';
import '../screens/category_details_mobile_screen.dart';

class CategoryDetailsMobileGridView extends StatelessWidget {
  const CategoryDetailsMobileGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
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
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 250,
                    crossAxisCount: 2,
                    childAspectRatio: .5,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: BuildItemListViewBooksWithWidgetStack(
                          imagePath: image[index]),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

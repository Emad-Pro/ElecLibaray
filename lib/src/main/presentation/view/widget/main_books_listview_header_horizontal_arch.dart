import 'package:flutter/material.dart';

import '../../../../../core/global_model/books_model.dart';
import '../../../../../core/widget/build_item_listview_books.dart';

class MainBooksListViewHeaderHorizontalArch extends StatelessWidget {
  const MainBooksListViewHeaderHorizontalArch(
      {super.key, required this.booksModel});
  final List<BooksModel> booksModel;
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.surface;
    return Expanded(
      child: Center(
        child: ListView.separated(
          clipBehavior: Clip.hardEdge,
          itemCount: 3,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return BuildItemListViewBooks(
              bookModel: booksModel[index],
              colorText: color,
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 20,
            );
          },
        ),
      ),
    );
  }
}

List<String> images = [
  "assets/images/image_test/1.png",
  "assets/images/image_test/2.png",
  "assets/images/image_test/3.png",
];

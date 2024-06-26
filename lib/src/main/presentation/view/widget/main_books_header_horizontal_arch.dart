import 'package:elec_lib_app/core/global_model/books_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/shape_packge/arc.dart';
import '../../../../../core/shape_packge/shape.dart';
import 'main_books_listview_header_horizontal_arch.dart';
import 'main_books_text_recently_add_widget.dart';

class HeaderHorizontalArch extends StatelessWidget {
  const HeaderHorizontalArch({super.key, required this.booksModel});
  final List<BooksModel> booksModel;
  @override
  Widget build(BuildContext context) {
    final backgroundColor = Theme.of(context).colorScheme.primary;
    return SizedBox(
      height: 340,
      width: double.infinity,
      child: ShapeOfView(
        shape: ArcShape(
            direction: ArcDirection.outside,
            height: 50,
            position: ArcPosition.bottom),
        child: Container(
          color: backgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainBooksTextRecentlyAddHorizontalArch(),
              MainBooksListViewHeaderHorizontalArch(
                booksModel: booksModel,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

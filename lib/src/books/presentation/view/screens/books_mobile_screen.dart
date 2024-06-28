import 'package:elec_lib_app/core/enum/state.dart';
import 'package:elec_lib_app/core/widget/build_item_listview_books.dart';
import 'package:elec_lib_app/src/books/presentation/view_model/cubit/books_cubit.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widget/custom_text_erorr.dart';
import '../../../../../core/widget/custom_widget_loading.dart';

class BooksMobileScreen extends StatelessWidget {
  const BooksMobileScreen({Key? key, required this.booksState})
      : super(key: key);
  final BooksState booksState;
  @override
  Widget build(BuildContext context) {
    switch (booksState.booksWithAuthorState) {
      case RequestState.loading:
        return CustomWidgetLoading();
      case RequestState.success:
        return GridView.builder(
          itemCount: booksState.booksModelWithAuthor!.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return BuildItemListViewBooks(
                colorText: Colors.white,
                bookModel: booksState.booksModelWithAuthor![index]);
          },
        );
      case RequestState.erorr:
        return CustomTextErorr();
    }
  }
}

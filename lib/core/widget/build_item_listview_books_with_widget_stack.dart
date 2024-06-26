import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elec_lib_app/src/book_details/presentation/view/book_details_layout.dart';
import 'package:elec_lib_app/src/home/view_model/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../global_model/books_model.dart';
import 'build_book_mark_widget.dart';
import 'build_item_listview_books.dart';

class BuildItemListViewBooksWithWidgetStack extends StatelessWidget {
  const BuildItemListViewBooksWithWidgetStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        BlocProvider.of<HomeCubit>(context)
            .changeSelectedPageDrawer(widgetLayout: const BookDetailsLayout());
      },
      child: SizedBox(
        height: 210,
        width: 120,
        child: Stack(
          children: [
            BuildItemListViewBooks(
              bookModel: BooksModel(
                  authroName: 'شسيشسي',
                  booksDetails: 'شسيشسيشس',
                  bookName: 'شسيشسيشسيشسي',
                  bookLogo: 'شسيشسيشسيشس',
                  bookPage: 200,
                  bookVersion: '2',
                  category: 'شسيشسي',
                  bookDate: Timestamp.now()),
              colorText: Theme.of(context).colorScheme.onSurface,
            ),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                  //        activeColor: kBackgroundColorGreen,
                ),
                BuildBookMarkWidget(
                  value: true,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

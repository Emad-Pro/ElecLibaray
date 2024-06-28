import 'package:elec_lib_app/core/import.dart';
import 'package:elec_lib_app/core/responsive_layout/responsive_layout.dart';
import 'package:elec_lib_app/src/books/presentation/view/screens/books_mobile_screen.dart';
import 'package:elec_lib_app/src/books/presentation/view/screens/books_tablet_screen.dart';
import 'package:elec_lib_app/src/books/presentation/view_model/cubit/books_cubit.dart';
import 'package:flutter/material.dart';

class BooksLayout extends StatelessWidget {
  const BooksLayout({Key? key, required this.authorId}) : super(key: key);
  final String authorId;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BooksCubit(getIt())..getBooksWithAuthorId(authorId),
      child: BlocBuilder<BooksCubit, BooksState>(builder: (context, state) {
        if (ResponsiveDevices.isDesktop(context)) {
          return const BooksTabletScreen();
        } else {
          return BooksMobileScreen(
            booksState: state,
          );
        }
      }),
    );
  }
}

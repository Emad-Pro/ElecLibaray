import 'package:flutter/material.dart';

import '../widget/main_books_category_widget.dart';
import '../widget/main_books_header_horizontal_arch.dart';
import '../widget/main_books_my_books_widget.dart';
import '../widget/main_books_my_washlist_widget.dart';

class MainBooksTabletScreen extends StatelessWidget {
  const MainBooksTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: HeaderHorizontalArch(),
        ),
        SliverToBoxAdapter(
          child: MainBooksMyBooksWidget(),
        ),
        SliverToBoxAdapter(
          child: MainBooksMyWashlistWidget(),
        ),
        SliverToBoxAdapter(
          child: MainBooksCategoryWidget(),
        )
      ],
    );
    ;
  }
}

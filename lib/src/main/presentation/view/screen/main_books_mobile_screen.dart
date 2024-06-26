import 'package:elec_lib_app/core/enum/state.dart';
import 'package:flutter/material.dart';
import '../../../../../core/widget/custom_text_erorr.dart';
import '../../../../../core/widget/custom_widget_loading.dart';
import '../../view_model/cubit/main_books_cubit.dart';
import '../widget/main_books_category_widget.dart';
import '../widget/main_books_header_horizontal_arch.dart';
import '../widget/main_books_my_books_widget.dart';
import '../widget/main_books_my_washlist_widget.dart';

class MainBooksMobileScreen extends StatelessWidget {
  const MainBooksMobileScreen({super.key, required this.mainBooksState});
  final MainBooksState mainBooksState;
  @override
  Widget build(BuildContext context) {
    switch (mainBooksState.mainRequestState) {
      case RequestState.loading:
        return const CustomWidgetLoading();
      case RequestState.success:
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: HeaderHorizontalArch(
                booksModel: mainBooksState.recentlyAddedBooksModel!,
              ),
            ),
            if (mainBooksState.mybooksModel!.isNotEmpty)
              const SliverToBoxAdapter(
                child: MainBooksMyBooksWidget(),
              ),
            if (mainBooksState.wishlistbooksModel!.isNotEmpty)
              const SliverToBoxAdapter(
                child: MainBooksMyWashlistWidget(),
              ),
            const SliverToBoxAdapter(
              child: MainBooksCategoryWidget(),
            )
          ],
        );
      case RequestState.erorr:
        return const CustomTextErorr();
    }
  }
}

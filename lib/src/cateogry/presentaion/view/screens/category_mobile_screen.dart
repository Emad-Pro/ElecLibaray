import 'package:elec_lib_app/src/main/presentation/view/widget/main_books_build_category_listview_item.dart';
import 'package:elec_lib_app/src/main/presentation/view/widget/main_books_category_widget.dart';
import 'package:flutter/material.dart';

class CategoryMobileScreen extends StatelessWidget {
  const CategoryMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        MediaQuery.sizeOf(context).width < 400 ? 2 : 3,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15),
                itemBuilder: (context, index) =>
                    MainBooksBuildCategoryListViewItem(
                        imagePath: categoryList[index],
                        nameCategory: categoryText[index])),
          ),
        )
      ],
    );
  }
}

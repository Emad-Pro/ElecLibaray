import 'package:elec_lib_app/core/responsive_layout/app_styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/shape_packge/arc.dart';
import '../../../../../core/shape_packge/shape.dart';
import '../../../../../core/widget/build_item_listview_books_with_widget_stack.dart';
import '../../../../../core/widget/text_title_group_books.dart';

class CategoryMobileScreen extends StatelessWidget {
  const CategoryMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: NeverScrollableScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: CategoryHeaderArch(),
        ),
        SliverToBoxAdapter(
          child: CategoryGridView(),
        )
      ],
    );
  }
}

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
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
                  return Padding(
                    padding: const EdgeInsets.all(12),
                    child: BuildItemListViewBooksWithWidgetStack(
                        imagePath: image[index]),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

class CategoryHeaderArch extends StatelessWidget {
  const CategoryHeaderArch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ShapeOfView(
          shape: ArcShape(
              direction: ArcDirection.Outside,
              height: 60,
              position: ArcPosition.Bottom),
          child: Container(
            width: double.infinity,
            height: 280,
            decoration: const BoxDecoration(),
            child: const Image(
              image: AssetImage(
                "assets/images/image_test/Rectangle.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            "Fantasy",
            style: TextStyle(
                color: Colors.white,
                fontSize: getResponsiveFontSize(context, fontSize: 30),
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

List<String> image = [
  "assets/images/image_test/1.png",
  "assets/images/image_test/2.png",
  "assets/images/image_test/3.png",
  "assets/images/image_test/4.png",
  "assets/images/image_test/5.png",
  "assets/images/image_test/6.png",
  "assets/images/image_test/7.png",
  "assets/images/image_test/8.png"
];

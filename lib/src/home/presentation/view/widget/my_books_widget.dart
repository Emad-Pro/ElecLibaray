import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:flutter/material.dart';

import '../../../../../core/responsive_layout/app_styles.dart';
import '../../../../../core/theme/colors.dart';
import 'build_item_listview_books_with_widget_stack.dart';

class MyBooksWidget extends StatelessWidget {
  const MyBooksWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextTitleGroupBooks(
            titleText: "My books",
            count: 99,
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            height: 200,
            child: ListView.separated(
              itemCount: 4,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return BuildItemListViewBooksWithWidgetStack(
                  widget: Checkbox(
                    value: true,
                    onChanged: (value) {},
                    activeColor: kBackgroundColorGreen,
                  ),
                  imagePath: images[index],
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 10);
              },
            ),
          )
        ],
      ),
    );
  }
}

class TextTitleGroupBooks extends StatelessWidget {
  const TextTitleGroupBooks(
      {super.key, required this.count, required this.titleText});
  final int? count;
  final String titleText;
  @override
  Widget build(BuildContext context) {
    return Text(
      "${titleText.tr(context)} ${count != null ? "(${count})" : ""}",
      style: TextStyle(
          color: kBackgroundColorGreen,
          fontSize: getResponsiveFontSize(context, fontSize: 22),
          fontWeight: FontWeight.bold),
    );
  }
}

List<String> images = [
  "assets/images/image_test/5.png",
  "assets/images/image_test/6.png",
  "assets/images/image_test/7.png",
  "assets/images/image_test/4.png",
];

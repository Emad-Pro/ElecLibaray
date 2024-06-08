import 'package:flutter/material.dart';

import '../screen/home_mobile_screen.dart';
import 'build_item_listview_header.dart';

class ListViewHeaderHorizontalArch extends StatelessWidget {
  const ListViewHeaderHorizontalArch({
    super.key,
  });

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
              imagePath: images[index],
              colorText: color,
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
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

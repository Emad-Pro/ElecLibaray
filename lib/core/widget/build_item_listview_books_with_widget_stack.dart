import 'package:elec_lib_app/src/book_details/book_details_layout.dart';
import 'package:elec_lib_app/src/home/view_model/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../theme/colors.dart';
import 'build_book_mark_widget.dart';
import 'build_item_listview_books.dart';

class BuildItemListViewBooksWithWidgetStack extends StatelessWidget {
  const BuildItemListViewBooksWithWidgetStack(
      {super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        BlocProvider.of<HomeCubit>(context)
            .changeSelectedPageDrawer(widgetLayout: BookDetailsLayout());
      },
      child: SizedBox(
        height: 130,
        width: 120,
        child: Stack(
          children: [
            BuildItemListViewBooks(
              imagePath: imagePath,
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

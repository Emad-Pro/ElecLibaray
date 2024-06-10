import 'package:elec_lib_app/src/category_details/presentation/view/category_details_layout.dart';
import 'package:elec_lib_app/src/home/view_model/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/responsive_layout/app_styles.dart';

class MainBooksBuildCategoryListViewItem extends StatelessWidget {
  const MainBooksBuildCategoryListViewItem(
      {super.key, required this.imagePath, required this.nameCategory});
  final String imagePath;
  final String nameCategory;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        BlocProvider.of<HomeCubit>(context).changeSelectedPageDrawer(
          widgetLayout: const CategoryDetailsLayout(),
        );
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
            ),
          ),
          Text(
            nameCategory,
            style: TextStyle(
                //   color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: getResponsiveFontSize(context, fontSize: 20)),
          )
        ],
      ),
    );
  }
}

import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:elec_lib_app/src/home/view_model/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/colors.dart';
import '../../data/model/drawer_model.dart';

class BuildDrawerItem extends StatelessWidget {
  final DrawerModel drawerModel;
  final int index;
  const BuildDrawerItem(
      {super.key, required this.index, required this.drawerModel});

  @override
  Widget build(BuildContext context) {
    final isSelected = context.read<HomeCubit>().state.selectedIndex == index;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: isSelected ? kBackgroundColorGreen : Colors.transparent),
      child: ListTile(
          onTap: () {
            context.read<HomeCubit>().changeSelectedPageDrawer(index);
          },
          leading: Icon(
            drawerModel.icon,
            color: isSelected ? Colors.black : Colors.grey,
          ),
          title: Text(
            drawerModel.title.tr(context),
            style: TextStyle(
                fontSize: 14,
                color: isSelected ? Colors.black : Colors.grey,
                fontWeight: FontWeight.normal),
          )),
    );
    ;
  }
}

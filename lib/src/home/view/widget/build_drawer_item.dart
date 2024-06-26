import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:elec_lib_app/src/home/view_model/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/drawer_model.dart';

class BuildDrawerItem extends StatelessWidget {
  final DrawerModel drawerModel;
  final int index;

  const BuildDrawerItem({
    super.key,
    required this.index,
    required this.drawerModel,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = context.read<HomeCubit>().state.selectedIndex == index;
    final color = Theme.of(context).colorScheme;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: isSelected ? color.secondary : color.inversePrimary),
      child: ListTile(
          onTap: () {
            context.read<HomeCubit>().changeSelectedPageDrawer(index: index);
          },
          leading: Icon(
            drawerModel.icon,
            color: isSelected ? color.surface : color.primary,
          ),
          title: Text(
            drawerModel.title.tr(context),
            style: TextStyle(
                fontSize: 14,
                color: isSelected ? color.surface : color.primary,
                fontWeight: FontWeight.normal),
          )),
    );
  }
}

import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_model/cubit/home_cubit.dart';
import 'build_drawer_item.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 1,
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Column(
            children: [
              DrawerHeader(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.person,
                    size: 65,
                  ),
                  Text(
                    "${"Welcome".tr(context)}, Emad Younis!",
                    //      style: const TextStyle(color: kBackgroundColorGreen),
                  ),
                ],
              )),
              Expanded(
                child: ListView.builder(
                    itemCount: context.read<HomeCubit>().drawerPage.length,
                    itemBuilder: (context, index) => BuildDrawerItem(
                          drawerModel:
                              context.read<HomeCubit>().drawerPage[index],
                          index: index,
                        )),
              )
            ],
          );
        },
      ),
    );
  }
}

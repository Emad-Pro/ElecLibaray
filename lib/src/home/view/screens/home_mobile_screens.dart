import 'package:elec_lib_app/src/home/view/widget/my_appbar.dart';

import 'package:elec_lib_app/src/home/view_model/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeMobileScreens extends StatelessWidget {
  const HomeMobileScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: context.read<HomeCubit>().state.selectedIndex,
          onTap: (index) {
            context.read<HomeCubit>().changeSelectedPageDrawer(index: index);
          },
          items: context.read<HomeCubit>().itemsBottomNavigationBar(context)),
      body: context.read<HomeCubit>().state.widgetLayout,
    );
  }
}

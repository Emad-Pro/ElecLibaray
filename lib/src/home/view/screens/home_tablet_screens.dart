import 'package:elec_lib_app/src/home/view/widget/my_drawer.dart';
import 'package:elec_lib_app/src/home/view_model/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../main/presentation/view/main_books_layout.dart';

class HomeTabletScreens extends StatelessWidget {
  const HomeTabletScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(flex: 3, child: MyDrawer()),
          Expanded(
            flex: 7,
            child: context
                .read<HomeCubit>()
                .homePage[context.read<HomeCubit>().state.selectedIndex],
          ),
        ],
      ),
    );
  }
}

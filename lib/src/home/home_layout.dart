import 'package:elec_lib_app/core/responsive_layout/responsive_layout.dart';
import 'package:elec_lib_app/src/home/view_model/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'view/screens/home_mobile_screens.dart';
import 'view/screens/home_tablet_screens.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return ResponsiveLayout(
            mobileScaffold: (context) => HomeMobileScreens(),
            tabletScaffold: (context) => HomeTabletScreens());
      },
    );
  }
}

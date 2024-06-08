import 'package:elec_lib_app/src/home/view/widget/my_drawer.dart';
import 'package:flutter/material.dart';

import '../../../main/presentation/view/main_books_layout.dart';

class HomeTabletScreens extends StatelessWidget {
  const HomeTabletScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(flex: 3, child: MyDrawer()),
          Expanded(flex: 7, child: MainBooksLayout()),
        ],
      ),
    );
  }
}

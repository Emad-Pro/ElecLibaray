import 'package:elec_lib_app/src/home/view/widget/my_appbar.dart';
import 'package:elec_lib_app/src/home/view/widget/my_drawer.dart';
import 'package:flutter/material.dart';

import '../../../main/presentation/view/main_books_layout.dart';

class HomeMobileScreens extends StatelessWidget {
  const HomeMobileScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(),
      drawer: MyDrawer(),
      body: MainBooksLayout(),
    );
  }
}

import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:elec_lib_app/core/responsive_layout/app_styles.dart';
import 'package:elec_lib_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../widget/build_item_listview_books_with_widget_stack.dart';

import '../widget/category_widget.dart';
import '../widget/custom_appbar_home.dart';
import '../widget/header_horizontal_arch.dart';
import '../widget/my_books_widget.dart';
import '../widget/my_washlist_widget.dart';

class HomeMobileScreen extends StatelessWidget {
  const HomeMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person,
                  size: 65,
                ),
                Text(
                  "${"Welcome".tr(context)}, Emad Younis!",
                  style: TextStyle(color: kBackgroundColorGreen),
                )
              ],
            )),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Profile".tr(context)),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.folder),
                  title: Text("Catalog".tr(context)),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.groups_rounded),
                  title: Text("Groups".tr(context)),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.event),
                  title: Text("Events".tr(context)),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings".tr(context)),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Sign out".tr(context)),
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          CustomAppbarHome(),
          SliverToBoxAdapter(
            child: HeaderHorizontalArch(),
          ),
          SliverToBoxAdapter(
            child: MyBooksWidget(),
          ),
          SliverToBoxAdapter(
            child: MyWashlistWidget(),
          ),
          SliverToBoxAdapter(
            child: CategoryWidget(),
          )
        ],
      ),
    );
  }
}

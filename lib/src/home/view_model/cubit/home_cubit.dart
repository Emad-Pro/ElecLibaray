import 'package:bloc/bloc.dart';
import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:elec_lib_app/src/author/presentation/view/authors_layout.dart';
import 'package:elec_lib_app/src/home/data/model/drawer_model.dart';
import 'package:elec_lib_app/src/main/presentation/view/main_books_layout.dart';
import 'package:elec_lib_app/src/settings/view/settings_layout.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../cateogry/presentaion/view/category_layout.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());
  List<DrawerModel> drawerPage = [
    DrawerModel(icon: Icons.home, title: "Home"),
    DrawerModel(icon: Icons.category, title: "Category"),
    DrawerModel(icon: Icons.auto_stories_sharp, title: "Authors"),
    DrawerModel(icon: Icons.report, title: "Reports"),
    DrawerModel(icon: Icons.settings, title: "Settings"),
  ];
  List<BottomNavigationBarItem> itemsBottomNavigationBar(context) {
    final backgroundColor = Theme.of(context).colorScheme.inversePrimary;
    return [
      BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: "Home".tr(context),
          backgroundColor: backgroundColor),
      BottomNavigationBarItem(
        icon: const Icon(Icons.category),
        label: "Category".tr(context),
        backgroundColor: backgroundColor,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.auto_stories_sharp),
        label: "Authors".tr(context),
        backgroundColor: backgroundColor,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.report),
        label: "Reports".tr(context),
        backgroundColor: backgroundColor,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.settings),
        label: "Settings".tr(context),
        backgroundColor: backgroundColor,
      ),
    ];
  }

  List<Widget> homePage = [
    const MainBooksLayout(),
    const CategoryLayout(),
    const AuthorsLayout(),
    const Text("Reports"),
    const SettingsLayout(),
  ];
  changeSelectedPageDrawer({int? index, Widget? widgetLayout}) {
    Widget? widget;
    if (index != null) {
      widget = currentWidget(index);
    } else {
      widget = widgetLayout;
    }
    emit(state.copyWith(selectedIndex: index, widgetLayout: widget));
  }

  Widget currentWidget(index) {
    if (index != null) {
      return homePage[index];
    } else {
      return const Text("data");
    }
  }
}

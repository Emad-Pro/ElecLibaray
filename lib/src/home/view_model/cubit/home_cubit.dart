import 'package:bloc/bloc.dart';

import 'package:elec_lib_app/src/home/data/model/drawer_model.dart';
import 'package:elec_lib_app/src/home/home_layout.dart';
import 'package:elec_lib_app/src/main/presentation/view/main_books_layout.dart';
import 'package:elec_lib_app/src/settings/view/settings_layout.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState());
  List<DrawerModel> drawerPage = [
    DrawerModel(icon: Icons.home, title: "Home"),
    DrawerModel(icon: Icons.person, title: "Profile"),
    DrawerModel(icon: Icons.folder, title: "Catalog"),
    DrawerModel(icon: Icons.groups_rounded, title: "Groups"),
    DrawerModel(icon: Icons.event, title: "Events"),
    DrawerModel(icon: Icons.settings, title: "Settings"),
    DrawerModel(icon: Icons.logout, title: "Sign out")
  ];
  List<BottomNavigationBarItem> itemsBottomNavigationBar(context) {
    final backgroundColor = Theme.of(context).colorScheme.primary;
    return [
      BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: "Home",
          backgroundColor: backgroundColor),
      BottomNavigationBarItem(
        icon: const Icon(Icons.person),
        label: "Profile",
        backgroundColor: backgroundColor,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.folder),
        label: "Catalog",
        backgroundColor: backgroundColor,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.groups_rounded),
        label: "Groups",
        backgroundColor: backgroundColor,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.event),
        label: "Events",
        backgroundColor: backgroundColor,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.settings),
        label: "Settings",
        backgroundColor: backgroundColor,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.logout),
        label: "Sign out",
        backgroundColor: backgroundColor,
      ),
    ];
  }

  List<Widget> homePage = [
    const MainBooksLayout(),
    const Text("profile"),
    const Text("catalog"),
    const Text("group"),
    const Text("events"),
    const SettingsLayout(),
    const Text("logout")
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
    if (index == 0) {
      return const MainBooksLayout();
    } else if (index == 1) {
      return const Text("profile");
    } else if (index == 2) {
      return const Text("catalog");
    } else if (index == 3) {
      return const Text("groups");
    } else if (index == 4) {
      return const Text("events");
    } else if (index == 5) {
      return const SettingsLayout();
    } else if (index == 6) {
      return const Text("logout");
    } else {
      return const Text("data");
    }
  }
}

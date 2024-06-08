import 'package:bloc/bloc.dart';
import 'package:elec_lib_app/src/home/data/model/drawer_model.dart';
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
  List<Widget> homePage = [
    MainBooksLayout(),
    Text("profile"),
    Text("catalog"),
    Text("group"),
    Text("events"),
    SettingsLayout(),
    Text("logout")
  ];
  changeSelectedPageDrawer(int index) {
    emit(state.copyWith(selectedIndex: index));
  }
}

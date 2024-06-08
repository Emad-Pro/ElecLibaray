import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}

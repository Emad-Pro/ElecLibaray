import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:flutter/material.dart';

import '../../../../core/widget/custom_listtile_widget.dart';

class SettingsProfile extends StatelessWidget {
  const SettingsProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomListTileWidget(
      icon: Icons.person,
      title: "Profile".tr(context),
      subtitle: "You can see your profile details".tr(context),
      color: Colors.blue[900],
      onTap: () {},
    );
  }
}

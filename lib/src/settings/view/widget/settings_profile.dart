import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:elec_lib_app/src/home/view_model/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widget/custom_listtile_widget.dart';
import '../../../auth/profile/view/profile_screen.dart';

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
      onTap: () {
        context
            .read<HomeCubit>()
            .changeSelectedPageDrawer(widgetLayout: ProfileScreen());
      },
    );
  }
}

import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/theme.dart';
import '../../../../core/widget/custom_listtile_widget.dart';
import '../../view_model/cubit/settings_cubit.dart';

class SettingsThemeMode extends StatelessWidget {
  const SettingsThemeMode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return CustomListTileWidget(
          icon: CupertinoIcons.moon_fill,
          color: Colors.orange[900],
          title: "Theme Mode".tr(context),
          subtitle:
              "You can switch between light mode and dark mode".tr(context),
          widget: Switch(
            value: ThemeService.darkModeValue,
            onChanged: (value) {
              BlocProvider.of<SettingsCubit>(context).changeThemeMode();
            },
          ),
        );
      },
    );
  }
}

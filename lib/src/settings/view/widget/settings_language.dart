import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widget/custom_listtile_widget.dart';
import '../../view_model/cubit/settings_cubit.dart';

class SettingsLanguage extends StatelessWidget {
  const SettingsLanguage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomListTileWidget(
      icon: Icons.language,
      title: "Language".tr(context),
      subtitle: "You can switch between Arabic and English".tr(context),
      color: Colors.green[900],
      widget: SizedBox(
        height: 200,
        width: 100,
        child: DropdownButton<String>(
            isExpanded: true,
            isDense: false,
            value:
                BlocProvider.of<SettingsCubit>(context).locale!.languageCode ==
                        "en"
                    ? "English"
                    : "Arabic",
            items: ["English", "Arabic"].map((String items) {
              return DropdownMenuItem<String>(
                value: items,
                child: Text(items.tr(context)),
              );
            }).toList(),
            onChanged: (newValue) {
              if (newValue == "English") {
                BlocProvider.of<SettingsCubit>(context).changeLanguage("en");
              } else if (newValue == "Arabic") {
                BlocProvider.of<SettingsCubit>(context).changeLanguage("ar");
              }
            }),
      ),
    );
  }
}

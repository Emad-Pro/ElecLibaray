import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/theme.dart';
import '../../../../core/widget/custom_listtile_widget.dart';
import '../../view_model/cubit/settings_cubit.dart';

class SettingsColorApp extends StatelessWidget {
  const SettingsColorApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomListTileWidget(
      icon: Icons.language,
      title: "Colors",
      subtitle: "You can switch between Color For App",
      color: Colors.indigo[900],
      widget: SizedBox(
        height: 200,
        width: 100,
        child: BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, state) {
            return DropdownButton<String>(
                isExpanded: true,
                isDense: false,
                value: ThemeService.selectColorValue,
                items: color.map((String items) {
                  return DropdownMenuItem<String>(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (newValue) {
                  BlocProvider.of<SettingsCubit>(context).chaneColor(newValue);
                });
          },
        ),
      ),
    );
  }
}

List<String> color = [
  "material",
  "materialHc",
  "blue",
  "indigo",
  "hippieBlue",
  "aquaBlue",
  "brandBlue",
  "deepBlue",
  "sakura",
  "mandyRed",
  "red",
  "redWine",
  "purpleBrown",
  "green",
  "money",
  "jungle",
  "greyLaw",
  "wasabi",
  "gold",
  "mango",
  "amber",
  "vesuviusBurn",
  "deepPurple",
  "ebonyClay",
  "barossa",
  "shark",
  "bigStone",
  "damask",
  "bahamaBlue",
  "mallardGreen",
  "espresso",
  "outerSpace",
  "blueWhale",
  "sanJuanBlue",
  "rosewood",
  "blumineBlue",
  "flutterDash",
  "materialBaseline",
  "verdunHemlock",
  "dellGenoa",
  "redM3",
  "pinkM3",
  "purpleM3",
  "indigoM3",
  "blueM3",
  "cyanM3",
  "tealM3",
  "greenM3",
  "limeM3",
  "yellowM3",
  "orangeM3",
  "deepOrangeM3",
];

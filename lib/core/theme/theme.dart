import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../src/settings/view_model/cubit/settings_cubit.dart';
import '../sharedPreferences/cacheHelper.dart';

class ThemeService {
  ThemeData lightMode(context) => ThemeData(
        useMaterial3: false,
        fontFamily:
            BlocProvider.of<SettingsCubit>(context).locale!.languageCode == "en"
                ? "Rubic"
                : "Cairo",
        brightness: Brightness.light,
        colorScheme: ColorScheme.light(
          surface: Colors.grey.shade300,
          primary: Colors.grey.shade200,
          secondary: Colors.grey.shade400,
          inversePrimary: Colors.grey.shade800,
        ),
      );

  ThemeData darkMode(context) => ThemeData(
        useMaterial3: false,
        brightness: Brightness.dark,
        fontFamily:
            BlocProvider.of<SettingsCubit>(context).locale!.languageCode == "en"
                ? "Rubic"
                : "Cairo",
        colorScheme: ColorScheme.dark(
          surface: Colors.grey.shade900,
          primary: Colors.grey.shade800,
          secondary: Colors.grey.shade700,
          inversePrimary: Colors.grey.shade300,
        ),
      );
  static bool darkModeValue = false;
  static Future themeInit() async {
    if (CacheHelper.getSaveData(key: "darkMode") == null) {
      CacheHelper.saveData(key: "darkMode", value: false);
    }
    darkModeValue = await CacheHelper.getSaveData(key: "darkMode");
  }

  static Future changeDarkMode() async {
    print(darkModeValue);
    darkModeValue = !darkModeValue;

    await CacheHelper.saveData(key: "darkMode", value: darkModeValue);
  }
}

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../src/settings/view_model/cubit/settings_cubit.dart';
import '../sharedPreferences/cahce_helper.dart';

class ThemeService {
  static FlexScheme flexschemeColor = FlexScheme.aquaBlue;
  static String? selectColorValue = 'aquaBlue';
  static bool darkModeValue = false;
  static ThemeData lightTheme(context) {
    return FlexThemeData.light(
      scheme: flexschemeColor,
      useMaterial3: true,
      fontFamily:
          BlocProvider.of<SettingsCubit>(context).locale!.languageCode == "en"
              ? "Rubic"
              : "Cairo",
    );
  }

  static ThemeData darkTheme(context) {
    return FlexThemeData.dark(
      scheme: flexschemeColor,
      useMaterial3: true,
      fontFamily:
          BlocProvider.of<SettingsCubit>(context).locale!.languageCode == "en"
              ? "Rubic"
              : "Cairo",
    );
  }

  static Future themeInit() async {
    bool? darkModeCached = await CacheHelper.getSaveData(key: "darkMode");
    if (darkModeCached == null) {
      await CacheHelper.saveData(key: "darkMode", value: false);
      darkModeCached = await CacheHelper.getSaveData(key: "darkMode");
    }
    darkModeValue = darkModeCached!;

    final getCachedTheme = CacheHelper.getSaveData(key: "colorApp");
    if (getCachedTheme != null) {
      flexschemeColor = FlexScheme.values.byName(getCachedTheme);
      selectColorValue = getCachedTheme;
    }
  }

  static Future changeDarkMode() async {
    darkModeValue = !darkModeValue;
    await CacheHelper.saveData(key: "darkMode", value: darkModeValue);
  }
}

import 'package:bloc/bloc.dart';
import 'package:elec_lib_app/core/import.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import '../../../../core/AppLocalizations/app_localizations.dart';
import '../../../../core/theme/theme.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(this.languageCacheHelper) : super(const SettingsState());
  final LanguageCacheHelper languageCacheHelper;
  Locale? locale = const Locale("en");

  // profile Edit
  changeThemeMode() async {
    emit(ThemeSettingChangedLoadingState());
    await ThemeService.changeDarkMode();
    emit(ThemeSettingChangedSuccessState());
  }

  chaneColor(newValue) {
    emit(ThemeSettingChangedLoadingState());
    ThemeService.selectColorValue = newValue;
    ThemeService.flexschemeColor = FlexScheme.values.byName(newValue);
    FlexScheme.values.byName(newValue);
    CacheHelper.saveData(key: "colorApp", value: newValue);
    emit(ThemeSettingChangedSuccessState());
  }

  Future<void> getSavedLanguage() async {
    final String cacheLanguageCode =
        await languageCacheHelper.getCacheLanguageCode();
    locale = Locale(cacheLanguageCode);
    emit(ChangeLocaleState(locale: Locale(cacheLanguageCode)));
  }

  Future<void> changeLanguage(String languageCode) async {
    await languageCacheHelper
        .setCacheLanguageCode(languageCode)
        .then((value) {});
    locale = Locale(languageCode);
    emit(ChangeLocaleState(locale: Locale(languageCode)));
  }
}

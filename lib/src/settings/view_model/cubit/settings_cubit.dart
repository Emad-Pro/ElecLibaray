import 'package:bloc/bloc.dart';
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

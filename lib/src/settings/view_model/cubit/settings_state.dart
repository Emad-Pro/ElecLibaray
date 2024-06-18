part of 'settings_cubit.dart';

class SettingsState {
  const SettingsState();
}

class SettingsInitial extends SettingsState {}

class ThemeSettingChangedLoadingState extends SettingsState {}

class ThemeSettingChangedSuccessState extends SettingsState {}

class AppSettingsChangeLanguageState extends SettingsState {
  const AppSettingsChangeLanguageState();
}

class ChangeLocaleState extends SettingsState {
  final Locale locale;

  const ChangeLocaleState({required this.locale});
  List<Object?> get props => [locale];
}

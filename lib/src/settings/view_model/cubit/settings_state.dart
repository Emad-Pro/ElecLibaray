part of 'settings_cubit.dart';

class SettingsState extends Equatable {
  const SettingsState();

  @override
  List<Object> get props => [];
}

class SettingsInitial extends SettingsState {}

class ThemeSettingChangedLoadingState extends SettingsState {}

class ThemeSettingChangedSuccessState extends SettingsState {}

class AppSettingsChangeLanguageState extends SettingsState {
  final Locale locale;
  const AppSettingsChangeLanguageState({required this.locale});
}

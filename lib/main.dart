import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:elec_lib_app/core/get_It/service_locator.dart';
import 'package:elec_lib_app/core/sharedPreferences/cacheHelper.dart';
import 'package:elec_lib_app/src/settings/view_model/cubit/settings_cubit.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/theme/theme.dart';
import 'src/home/home_layout.dart';
import 'src/main/presentation/view/main_books_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  ServiceLocator().init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsCubit(getIt())..getSavedLanguage(),
      child: Builder(
        builder: (context) {
          context.watch<SettingsCubit>().state;
          return MaterialApp(
              scrollBehavior: MyCustomScrollBehavior(),
              locale: BlocProvider.of<SettingsCubit>(context).locale,
              supportedLocales: const [Locale('en'), Locale('ar')],
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate
              ],
              localeResolutionCallback: (deviceLocale, supportedLocales) {
                for (var locale in supportedLocales) {
                  if (deviceLocale != null &&
                      deviceLocale.languageCode == locale.languageCode) {
                    return const Locale("ar");
                  }
                }
                return supportedLocales.first;
              },
              title: 'Expense Tracker',
              theme: ThemeService().lightMode(context),
              darkTheme: ThemeService().darkMode(context),
              themeMode: false ? ThemeMode.dark : ThemeMode.light,
              home: HomeLayout());
        },
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

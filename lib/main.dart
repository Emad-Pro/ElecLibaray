import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:elec_lib_app/core/get_It/service_locator.dart';
import 'package:elec_lib_app/core/sharedPreferences/cahce_helper.dart';
import 'package:elec_lib_app/src/home/home_layout.dart';
import 'package:elec_lib_app/src/home/view_model/cubit/home_cubit.dart';
import 'package:elec_lib_app/src/settings/view_model/cubit/settings_cubit.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/theme/theme.dart';
import 'src/auth/login_or_register/view/login_or_signup_layout.dart';
import 'src/auth/user_data/user_data.dart';
import 'src/main/presentation/view_model/cubit/main_books_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyDXay9hGNQRBu2WkrIx-AhwR-nlzxHzBZg",
        projectId: "elecapp-f2736",
        messagingSenderId: "413618433373",
        appId: "1:413618433373:android:d57717dbf651dd698e8cb4"),
  );
  UserData.initUser();
  ServiceLocator().init();
  await ThemeService.themeInit();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SettingsCubit(getIt())..getSavedLanguage(),
        ),
        BlocProvider(
          create: (context) => HomeCubit(),
        ),
        BlocProvider(
            create: (context) => MainBooksCubit(getIt())..getMainData())
      ],
      child: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) {
          return MaterialApp(
            builder: EasyLoading.init(),
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
                  return deviceLocale;
                }
              }
              return supportedLocales.first;
            },
            title: 'Elec Lib',
            theme: ThemeService.lightTheme(context),
            darkTheme: ThemeService.darkTheme(context),
            themeMode:
                ThemeService.darkModeValue ? ThemeMode.dark : ThemeMode.light,
            home: const HomeLayout(),
            // home: UserData.uId != null ? HomeLayout() : LoginOrRegisterLayout(),
          );
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

class AutoDirctionWidget {
  static TextDirection getDirection(String text) {
    if (text.contains(RegExp(r'[\u0600-\u06FF]'))) {
      return TextDirection.rtl;
    } else {
      return TextDirection.ltr;
    }
  }
}

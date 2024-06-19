import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:elec_lib_app/src/auth/login/data/repository/login_repository.dart';
import 'package:elec_lib_app/src/auth/sign_up/data/repository/sign_up_repository.dart';
import 'package:elec_lib_app/src/settings/view_model/cubit/settings_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  void init() {
    getIt.registerFactory(() => LanguageCacheHelper());

    getIt.registerLazySingleton(() => SettingsCubit(getIt()));
    // getIt.registerLazySingleton(() => CategoryCubit(getIt()));
    // getIt.registerLazySingleton(() => SearchCubit(getIt()));
    // getIt.registerLazySingleton(() => ExpenseCubit(getIt()));
    getIt.registerSingleton<LoginRepository>(LoginRepositoryImp());
    getIt.registerSingleton<SignUpRepository>(SignUpRepositoryImp());
  }
}

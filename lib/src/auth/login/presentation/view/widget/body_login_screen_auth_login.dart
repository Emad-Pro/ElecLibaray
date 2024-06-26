import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:elec_lib_app/core/enum/auth_state.dart';
import 'package:elec_lib_app/core/get_It/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../../../../home/home_layout.dart';
import '../../view_model/cubit/login_cubit.dart';

import 'button_auth_login.dart';
import 'forgot_password_text_button_auth_login.dart';
import 'password_textformfiled_auth_login.dart';
import 'email_textformfiled_auth_login.dart';

class BodyLoginScreenAuthLogin extends StatelessWidget {
  const BodyLoginScreenAuthLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(getIt()),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state.requestState == AuthRequestState.erorr) {
            EasyLoading.dismiss();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.red,
                content: Text(state.loginMessage.tr(context)),
              ),
            );
          } else if (state.requestState == AuthRequestState.loading) {
            EasyLoading.show(
                status: 'loading...'.tr(context),
                maskType: EasyLoadingMaskType.black);
          } else if (state.requestState == AuthRequestState.success) {
            EasyLoading.dismiss();
            EasyLoading.showSuccess(
              state.loginMessage,
            ).then((onValue) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeLayout()));
            });
          }
        },
        builder: (context, state) {
          final loginCubit = context.watch<LoginCubit>();
          return Form(
            key: loginCubit.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EmailTextFormFiledAuthLogin(loginCubit: loginCubit),
                PasswordTextFormFiledAuthLogin(loginCubit: loginCubit),
                const ForgotPasswordTextButtonAuthLogin(),
                ButtonAuthLogin(
                  loginState: state,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

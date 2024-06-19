import 'package:elec_lib_app/core/get_It/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      child: BlocBuilder<LoginCubit, LoginState>(
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

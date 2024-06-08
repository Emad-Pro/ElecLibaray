import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_model/cubit/login_cubit.dart';

import 'button_aut_login.dart';
import 'forgot_password_text_button_auth_login.dart';
import 'password_textformfiled_auth_login.dart';
import 'username_textformfiled_auth_login.dart';

class BodyLoginScreenAuthLogin extends StatelessWidget {
  const BodyLoginScreenAuthLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          final loginCubit = context.watch<LoginCubit>();
          return Form(
            key: loginCubit.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UserNameTextFormFiledAuthLogin(loginCubit: loginCubit),
                PasswordTextFormFiledAuthLogin(loginCubit: loginCubit),
                const ForgotPasswordTextButtonAuthLogin(),
                ButtonAuthLogin(loginCubit: loginCubit),
              ],
            ),
          );
        },
      ),
    );
  }
}

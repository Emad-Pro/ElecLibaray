import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_model/cubit/login_cubit.dart';

class ButtonAuthLogin extends StatelessWidget {
  const ButtonAuthLogin({
    required this.loginState,
    super.key,
  });
  final LoginState loginState;
  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      width: MediaQuery.of(context).size.width * 0.4,
      height: 40,
      child: ElevatedButton(
        onPressed: loginState.isActive
            ? () {
                loginCubit.loginUser(loginCubit.emailController.text,
                    loginCubit.passwordController.text);
              }
            : null,
        style: ButtonStyle(
            elevation: WidgetStateProperty.all<double>(0),
            shape:
                WidgetStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
            backgroundColor: WidgetStateProperty.all<Color>(loginState.isActive
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.onPrimary)),
        child: Text(
          "Log in".tr(context),
          style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
        ),
      ),
    );
  }
}

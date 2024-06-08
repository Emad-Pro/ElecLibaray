import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/widget/custom_text_form_field.dart';
import '../../view_model/cubit/login_cubit.dart';

class PasswordTextFormFiledAuthLogin extends StatelessWidget {
  const PasswordTextFormFiledAuthLogin({
    super.key,
    required this.loginCubit,
  });

  final LoginCubit loginCubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 7.5),
      child: CustomTextFormFiled(
        controller: loginCubit.passwordController,
        title: "Password".tr(context),
        obsec: true,
        onChanged: (value) {
          loginCubit.validateUserNameAndPassword();
        },
      ),
    );
  }
}

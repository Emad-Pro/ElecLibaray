import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/widget/custom_text_form_field.dart';
import '../../view_model/cubit/login_cubit.dart';

class EmailTextFormFiledAuthLogin extends StatelessWidget {
  const EmailTextFormFiledAuthLogin({
    super.key,
    required this.loginCubit,
  });

  final LoginCubit loginCubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 7.5),
      child: CustomTextFormFiled(
        title: "Username".tr(context),
        controller: loginCubit.emailController,
        obsec: false,
        onChanged: (value) {
          loginCubit.validateUserNameAndPassword();
        },
      ),
    );
  }
}

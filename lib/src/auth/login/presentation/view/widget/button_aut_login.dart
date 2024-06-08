import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:flutter/material.dart';

import '../../view_model/cubit/login_cubit.dart';

class ButtonAuthLogin extends StatelessWidget {
  const ButtonAuthLogin({
    super.key,
    required this.loginCubit,
  });

  final LoginCubit loginCubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      width: MediaQuery.of(context).size.width * 0.4,
      height: 40,
      child: ElevatedButton(
        onPressed: loginCubit.isActive ? () {} : null,
        style: ButtonStyle(
            elevation: WidgetStateProperty.all<double>(0),
            shape:
                WidgetStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
            backgroundColor: WidgetStateProperty.all<Color>(loginCubit.isActive
                ? loginCubit.loginActiveButtonColor
                : loginCubit.loginUnActiveButtonColor)),
        child: Text(
          "Log in".tr(context),
          style: TextStyle(color: Theme.of(context).colorScheme.surface),
        ),
      ),
    );
  }
}

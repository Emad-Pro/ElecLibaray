import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:flutter/material.dart';

import '../../../../../core/responsive_layout/app_styles.dart';
import '../../../../../core/theme/colors.dart';
import '../../../register/presentation/view/register_screen.dart';

class LoginOrRegisterButtonSignUp extends StatelessWidget {
  const LoginOrRegisterButtonSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          elevation: WidgetStateProperty.all<double>(0),
          shape: WidgetStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
              side: const BorderSide(color: kBackgroundColorGreen)))),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const RegisterLayout()));
      },
      child: Text(
        "Sign up".tr(context),
        style: TextStyle(
            fontWeight: FontWeight.w400,
            color: kBackgroundColorGreen,
            fontSize: getResponsiveFontSize(context, fontSize: 18)),
      ),
    );
  }
}
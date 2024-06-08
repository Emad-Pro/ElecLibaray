import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:flutter/material.dart';

import '../../../../../core/responsive_layout/app_styles.dart';
import '../../../../../core/theme/colors.dart';
import '../../../login/presentation/view/login_layout.dart';

class LoginOrRegisterButtonLogin extends StatelessWidget {
  const LoginOrRegisterButtonLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: WidgetStateProperty.all<double>(0),
        backgroundColor: WidgetStateProperty.all<Color>(kBackgroundColorGreen),
      ),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginLayout()));
      },
      child: Text(
        "Log in".tr(context),
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: getResponsiveFontSize(context, fontSize: 18)),
      ),
    );
  }
}

import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/responsive_layout/app_styles.dart';

class ForgotPasswordTextButtonAuthLogin extends StatelessWidget {
  const ForgotPasswordTextButtonAuthLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 7.5),
      child: Center(
          child: Text(
        "Forgot your password?".tr(context),
        style: TextStyle(
            fontSize: getResponsiveFontSize(context, fontSize: 18),
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.9)),
      )),
    );
  }
}

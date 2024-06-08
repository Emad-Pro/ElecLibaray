import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:flutter/material.dart';

import '../../../../../core/responsive_layout/app_styles.dart';

class LoginOrRegisterSubTitleText extends StatelessWidget {
  const LoginOrRegisterSubTitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Your book library at the office".tr(context),
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
          fontSize: getResponsiveFontSize(context, fontSize: 22)),
    );
  }
}

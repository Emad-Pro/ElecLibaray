import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:flutter/material.dart';

import '../../../../../core/responsive_layout/app_styles.dart';
import '../../../../../core/theme/colors.dart';

class LoginOrRegisterTitleText extends StatelessWidget {
  const LoginOrRegisterTitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 50, bottom: 25.0, left: 25, right: 25),
      child: Text(
        "booky".tr(context),
        style: TextStyle(
            letterSpacing: 2,
            //    color: kBackgroundColorGreen,
            fontSize: getResponsiveFontSize(context, fontSize: 65)),
      ),
    );
  }
}

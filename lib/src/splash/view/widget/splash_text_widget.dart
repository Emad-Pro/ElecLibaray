import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:flutter/material.dart';

import '../../../../core/responsive_layout/app_styles.dart';

class SplashTextWidget extends StatelessWidget {
  const SplashTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Booky".tr(context),
      style: TextStyle(
        fontWeight: FontWeight.bold,
        //    color: kBackgroundColorGreen,
        fontStyle: FontStyle.italic,
        fontSize: getResponsiveFontSize(context, fontSize: 85),
      ),
    );
  }
}

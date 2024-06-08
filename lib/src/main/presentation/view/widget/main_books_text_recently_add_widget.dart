import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:flutter/material.dart';

import '../../../../../core/responsive_layout/app_styles.dart';

class MainBooksTextRecentlyAddHorizontalArch extends StatelessWidget {
  const MainBooksTextRecentlyAddHorizontalArch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Text(
        "Recently added".tr(context),
        style: TextStyle(
            fontSize: getResponsiveFontSize(
              context,
              fontSize: 20,
            ),
            color: Theme.of(context).colorScheme.surface),
      ),
    );
  }
}

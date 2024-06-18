import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:flutter/material.dart';

import '../responsive_layout/app_styles.dart';

class TextTitleGroupBooks extends StatelessWidget {
  const TextTitleGroupBooks(
      {super.key, required this.count, required this.titleText});
  final int? count;
  final String titleText;
  @override
  Widget build(BuildContext context) {
    return Text(
      "${titleText.tr(context)} ${count != null ? "($count)" : ""}",
      style: TextStyle(
          //    color: kBackgroundColorGreen,
          fontSize: getResponsiveFontSize(context, fontSize: 22),
          fontWeight: FontWeight.bold),
    );
  }
}

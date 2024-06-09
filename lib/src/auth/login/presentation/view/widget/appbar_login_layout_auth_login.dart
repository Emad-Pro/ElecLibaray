import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/theme/colors.dart';

class AppbarLoginLayoutAuthLogin extends StatelessWidget {
  const AppbarLoginLayoutAuthLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        //    backgroundColor: kBackgroundColorGreen,
        title: Text(
          "booky".tr(context),
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Theme.of(context).colorScheme.primary,
          ),
        ));
  }
}

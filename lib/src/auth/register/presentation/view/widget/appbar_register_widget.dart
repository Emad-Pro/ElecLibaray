import 'package:elec_lib_app/core/AppLocalizations/app_localizations.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/theme/colors.dart';

class AppbarRegisterWidget extends StatelessWidget {
  const AppbarRegisterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: kBackgroundColorGreen,
      foregroundColor: Theme.of(context).colorScheme.surface,
      title: Text(
        "booky".tr(context),
      ),
      centerTitle: true,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new)),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widget/settings_color_app.dart';
import 'widget/settings_language.dart';
import 'widget/settings_profile.dart';
import 'widget/settings_theme_mode.dart';

class SettingsLayout extends StatelessWidget {
  const SettingsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: const [
          SettingsProfile(),
          SettingsThemeMode(),
          SettingsLanguage(),
          SettingsColorApp(),
        ],
      ),
    );
  }
}

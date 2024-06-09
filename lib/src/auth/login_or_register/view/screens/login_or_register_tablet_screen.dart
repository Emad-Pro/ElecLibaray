import 'package:elec_lib_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

import '../widget/login_or_register_actions_widget.dart';
import '../widget/login_or_register_image_widget.dart';

class LoginOrRegisterTabletScreen extends StatelessWidget {
  const LoginOrRegisterTabletScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Row(
              children: [
                const Expanded(child: LoginOrRegisterActions()),
                Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            //  color: kBackgroundColorGreen,
                            borderRadius: BorderRadius.circular(12)),
                        height: double.infinity,
                        child: const LoginOrRegisterImage())),
              ],
            ),
          )
        ],
      ),
    );
  }
}

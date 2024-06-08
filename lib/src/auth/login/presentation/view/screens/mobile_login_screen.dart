import 'package:elec_lib_app/src/auth/login/presentation/view/widget/appbar_login_layout_auth_login.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widget/body_login_screen_auth_login.dart';

class MobileLoginScreen extends StatelessWidget {
  const MobileLoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          const AppbarLoginLayoutAuthLogin(),
          SliverFillRemaining(
            fillOverscroll: true,
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/images/login/login.svg"),
                const BodyLoginScreenAuthLogin()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

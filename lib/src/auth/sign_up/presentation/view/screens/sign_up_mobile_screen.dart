import 'package:elec_lib_app/src/auth/sign_up/presentation/view/widget/appbar_sign_up_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widget/body_sign_up_widget.dart';

class SignUpMobileScreen extends StatelessWidget {
  const SignUpMobileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const AppbarSignUpWidget(),
          SliverFillRemaining(
            hasScrollBody: false,
            fillOverscroll: true,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: SvgPicture.asset("assets/images/signup/signup.svg"),
                ),
                const BodySignUpWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

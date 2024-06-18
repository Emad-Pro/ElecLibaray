import 'package:elec_lib_app/src/auth/sign_up/presentation/view/widget/appbar_register_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widget/body_register_widget.dart';

class RegisterMobileScreen extends StatelessWidget {
  const RegisterMobileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const AppbarRegisterWidget(),
          SliverFillRemaining(
            hasScrollBody: false,
            fillOverscroll: true,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: SvgPicture.asset("assets/images/signup/signup.svg"),
                ),
                const BodyRegisterWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

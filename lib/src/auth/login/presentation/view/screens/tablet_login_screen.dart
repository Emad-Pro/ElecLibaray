import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widget/appbar_login_layout_auth_login.dart';
import '../widget/body_login_screen_auth_login.dart';

class TabletLoginScreen extends StatelessWidget {
  const TabletLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        const AppbarLoginLayoutAuthLogin(),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Row(
            children: [
              const Expanded(flex: 1, child: BodyLoginScreenAuthLogin()),
              Expanded(
                  flex: 1,
                  child: Container(
                      height: double.infinity,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(12)),
                      child:
                          SvgPicture.asset("assets/images/login/login.svg"))),
            ],
          ),
        )
      ],
    ));
  }
}

import 'package:flutter/material.dart';

import '../widget/login_or_register_actions_widget.dart';
import '../widget/login_or_register_image_widget.dart';

class LoginOrRegisterMobileScreen extends StatelessWidget {
  const LoginOrRegisterMobileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
              child: Column(
            children: [
              LoginOrRegisterActions(),
              LoginOrRegisterImage(),
            ],
          )),
        ],
      ),
    );
  }
}

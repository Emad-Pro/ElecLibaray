import 'package:flutter/material.dart';

import 'login_or_register_button_login_widget.dart';
import 'login_or_register_button_signup_widget.dart';
import 'login_or_register_subtitle_text_widget.dart';
import 'login_or_register_title_text_widget.dart';

class LoginOrRegisterActions extends StatelessWidget {
  const LoginOrRegisterActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const LoginOrRegisterTitleText(),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.3,
          child: const LoginOrRegisterSubTitleText(),
        ),
        Container(
          margin: const EdgeInsets.only(top: 45),
          width: MediaQuery.of(context).size.width * 0.4,
          child: const LoginOrRegisterButtonLogin(),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15, bottom: 25),
          width: MediaQuery.of(context).size.width * 0.4,
          child: const LoginOrRegisterButtonSignUp(),
        ),
      ],
    );
  }
}

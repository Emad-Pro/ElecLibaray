import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginOrRegisterImage extends StatelessWidget {
  const LoginOrRegisterImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: SvgPicture.asset("assets/images/login_or_register/Group 2.svg"),
    );
  }
}

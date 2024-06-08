import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashImageWidget extends StatelessWidget {
  const SplashImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: SvgPicture.asset("assets/images/splash/Group 9.svg"),
    );
  }
}

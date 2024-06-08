import 'package:flutter/material.dart';

import '../widget/splash_image_widget.dart';
import '../widget/splash_text_widget.dart';

class SplashMobileScreen extends StatelessWidget {
  const SplashMobileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          SplashTextWidget(),
          SplashImageWidget(),
        ],
      ),
    );
  }
}

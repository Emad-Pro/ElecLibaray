import 'package:flutter/material.dart';

import '../widget/splash_image_widget.dart';
import '../widget/splash_text_widget.dart';

class SplashTabletScreen extends StatelessWidget {
  const SplashTabletScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(25.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: SplashTextWidget()),
            Expanded(child: SplashImageWidget()),
          ],
        ),
      ),
    );
  }
}

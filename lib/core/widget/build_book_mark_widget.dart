import 'package:flutter/material.dart';

import '../theme/colors.dart';

class BuildBookMarkWidget extends StatelessWidget {
  const BuildBookMarkWidget(
      {super.key, required this.onPressed, required this.value});
  final void Function()? onPressed;
  final bool value;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: Container(
            decoration: BoxDecoration(
                color: value ? kBackgroundColorGreen : null,
                borderRadius: BorderRadius.circular(2)),
            child: const Icon(
              Icons.bookmark_border,
              //   weight: 0.3,
              color: Color.fromARGB(255, 197, 197, 197),
            )));
  }
}

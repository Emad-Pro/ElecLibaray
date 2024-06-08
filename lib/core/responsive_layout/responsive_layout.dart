import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobileScaffold,
    required this.tabletScaffold,
  });
  final WidgetBuilder mobileScaffold;
  final WidgetBuilder tabletScaffold;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 550) {
          print(constraints);
          return mobileScaffold(context);
        } else {
          return tabletScaffold(context);
        }
      },
    );
  }
}

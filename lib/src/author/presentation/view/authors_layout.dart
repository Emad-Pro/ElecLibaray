import 'package:elec_lib_app/core/responsive_layout/responsive_layout.dart';
import 'package:flutter/material.dart';

class AuthorsLayout extends StatelessWidget {
  const AuthorsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveDevices.isMobile(context)) {
      return Container(
        child: Column(
          children: [
            CircleAvatar(
              child: Icon(Icons.person),
            ),
            Text("Emad Younis")
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}

import 'package:elec_lib_app/core/responsive_layout/responsive_layout.dart';
import 'package:flutter/material.dart';

class AuthorsLayout extends StatelessWidget {
  const AuthorsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveDevices.isMobile(context)) {
      return GridView.builder(
          itemCount: 20,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) => const BuildAuthorGridViewItem());
    } else {
      return GridView.builder(
          itemCount: 20,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250),
          itemBuilder: (context, index) => const BuildAuthorGridViewItem());
    }
  }
}

class BuildAuthorGridViewItem extends StatelessWidget {
  const BuildAuthorGridViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CircleAvatar(
          radius: 65,
          child: Icon(
            Icons.person,
            size: 54,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Emad Younis"),
        )
      ],
    );
  }
}

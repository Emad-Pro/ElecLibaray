import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/theme/colors.dart';
import '../widget/appbar_register_widget.dart';
import '../widget/body_register_widget.dart';

class RegisterTabletScreen extends StatelessWidget {
  const RegisterTabletScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const AppbarRegisterWidget(),
          SliverFillRemaining(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                  child: BodyRegisterWidget(),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: double.infinity,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: kBackgroundColorGreen,
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.only(top: 15.0),
                    child: SvgPicture.asset("assets/images/signup/signup.svg"),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

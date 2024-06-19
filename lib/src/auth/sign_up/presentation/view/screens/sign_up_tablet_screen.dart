import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widget/appbar_sign_up_widget.dart';
import '../widget/body_sign_up_widget.dart';

class SignUpTabletScreen extends StatelessWidget {
  const SignUpTabletScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const AppbarSignUpWidget(),
          SliverFillRemaining(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                  child: BodySignUpWidget(),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: double.infinity,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        //      color: kBackgroundColorGreen,
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

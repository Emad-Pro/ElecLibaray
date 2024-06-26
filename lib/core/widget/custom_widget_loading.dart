import 'package:flutter/material.dart';

class CustomWidgetLoading extends StatelessWidget {
  const CustomWidgetLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [CircularProgressIndicator(), Text("Loading ...")],
      ),
    );
  }
}

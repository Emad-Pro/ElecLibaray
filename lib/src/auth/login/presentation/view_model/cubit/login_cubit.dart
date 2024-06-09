import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';

import '../../../../../../core/theme/colors.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  bool isActive = false;
  GlobalKey formKey = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
//  Color loginActiveButtonColor = kBackgroundColorGreen;
  // Color loginUnActiveButtonColor = Colors.grey;
  validateUserNameAndPassword() {
    if (userNameController.text.length > 6 &&
        passwordController.text.length > 6) {
      isActive = true;
      emit(LoginInitial());
    } else {
      isActive = false;
      emit(LoginInitial());
    }
  }
}

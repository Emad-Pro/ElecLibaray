import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/theme/colors.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  bool isActive = false;
  final formKey = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
//  Color loginActiveButtonColor = kBackgroundColorGreen;
  // Color loginUnActiveButtonColor = Colors.grey;
  validateFormRegister() {
    if (formKey.currentState!.validate()) {}
    if (userNameController.text.length > 6 &&
        passwordController.text.length > 6 &&
        confirmPasswordController.text.length > 6 &&
        passwordController.text == confirmPasswordController.text &&
        emailController.text.isNotEmpty) {
      isActive = true;
      emit(RegisterInitial());
    } else {
      isActive = false;
      emit(RegisterInitial());
    }
  }
}

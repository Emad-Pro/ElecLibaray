import 'package:bloc/bloc.dart';

import 'package:elec_lib_app/core/enum/state.dart';
import 'package:elec_lib_app/src/auth/sign_up/data/model/sign_up_set_model.dart';
import 'package:elec_lib_app/src/auth/sign_up/data/repository/sign_up_repository.dart';
import 'package:equatable/equatable.dart';

import 'package:flutter/material.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  // ignore: prefer_const_constructors
  SignUpCubit(this.signUpRepository) : super(SignUpState());
  final SignUpRepository signUpRepository;
  final formKey = GlobalKey<FormState>();
  final String text = "";
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  validateFormRegister() async {
    if (userNameController.text.length > 6 &&
        passwordController.text.length > 6 &&
        confirmPasswordController.text.length > 6 &&
        passwordController.text == confirmPasswordController.text &&
        emailController.text.isNotEmpty) {
      emit(state.copyWith(isActive: true));
    } else {
      emit(state.copyWith(isActive: false));
    }
  }

  void claearFailed() {
    userNameController.clear();
    passwordController.clear();
    emailController.clear();
    confirmPasswordController.clear();
    emit(state.copyWith(isActive: false));
  }

  signUpNewUser() async {
    if (formKey.currentState!.validate()) {
      emit(state.copyWith(
        signUpNewUserState: AuthRequestState.loading,
      ));
      final result = await signUpRepository.createUserWithEmailAndPassword(
        SignUpSetModel(
          userName: userNameController.text,
          password: passwordController.text,
          email: emailController.text,
        ),
      );
      result.fold((ifLeft) {
        emit(
          state.copyWith(
            signUpNewUserState: AuthRequestState.erorr,
            signUpNewUserMessage: ifLeft.erorrMessage,
          ),
        );
      }, (ifRight) async {
        emit(
          state.copyWith(
            signUpNewUserState: AuthRequestState.success,
            signUpNewUserMessage: ifRight,
          ),
        );
      });
    }
  }
}

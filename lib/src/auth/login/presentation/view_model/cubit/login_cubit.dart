import 'package:bloc/bloc.dart';
import 'package:elec_lib_app/core/enum/auth_state.dart';
import 'package:elec_lib_app/src/auth/login/data/repository/login_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../../../data/model/login_model.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepository) : super(LoginState());
  final LoginRepository loginRepository;
  GlobalKey formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void validateUserNameAndPassword() {
    if (emailController.text.length > 6 && passwordController.text.length > 6) {
      emit(state.copyWith(isActive: true));
    } else {
      emit(state.copyWith(isActive: false));
    }
  }

  void loginUser(String email, String password) async {
    emit(state.copyWith(
      requestState: AuthRequestState.loading,
    ));
    final response =
        await loginRepository.signInWithEmailAndPassword(email, password);
    response.fold((ifLeft) {
      emit(state.copyWith(
          requestState: AuthRequestState.erorr,
          loginMessage: ifLeft.erorrMessage));
    }, (ifRight) {
      emit(state.copyWith(
          requestState: AuthRequestState.success, loginModel: ifRight));
    });
  }
}

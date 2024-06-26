part of 'login_cubit.dart';

class LoginState extends Equatable {
  final bool isActive;
  final AuthRequestState requestState;
  final String loginMessage;
  final LoginModel? loginModel;

  LoginState(
      {this.isActive = false,
      this.requestState = AuthRequestState.normal,
      this.loginMessage = '',
      this.loginModel});

  LoginState copyWith({
    bool? isActive,
    AuthRequestState? requestState,
    String? loginMessage,
    LoginModel? loginModel,
  }) {
    return LoginState(
        isActive: isActive ?? this.isActive,
        requestState: requestState ?? this.requestState,
        loginMessage: loginMessage ?? this.loginMessage,
        loginModel: loginModel ?? this.loginModel);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [isActive, requestState, loginMessage, loginModel];
}

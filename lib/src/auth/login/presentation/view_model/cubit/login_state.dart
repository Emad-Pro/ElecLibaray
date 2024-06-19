part of 'login_cubit.dart';

class LoginState extends Equatable {
  final bool isActive;
  final AuthRequestState requestState;
  final String loginMessage;
  final UserCredential? userCredential;

  LoginState(
      {this.isActive = false,
      this.requestState = AuthRequestState.normal,
      this.loginMessage = '',
      this.userCredential});

  LoginState copyWith({
    bool? isActive,
    AuthRequestState? requestState,
    String? loginMessage,
    UserCredential? userCredential,
  }) {
    return LoginState(
        isActive: isActive ?? this.isActive,
        requestState: requestState ?? this.requestState,
        loginMessage: loginMessage ?? this.loginMessage,
        userCredential: userCredential ?? this.userCredential);
  }

  @override
  // TODO: implement props
  List<Object?> get props =>
      [isActive, requestState, loginMessage, userCredential];
}

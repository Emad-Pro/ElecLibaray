part of 'sign_up_cubit.dart';

class SignUpState extends Equatable {
  final bool isActive;
  final AuthRequestState signUpNewUserState;
  final String signUpNewUserMessage;

  const SignUpState(
      {this.isActive = false,
      this.signUpNewUserState = AuthRequestState.normal,
      this.signUpNewUserMessage = ''});

  SignUpState copyWith({
    bool? isActive,
    AuthRequestState? signUpNewUserState,
    String? signUpNewUserMessage,
  }) {
    return SignUpState(
        isActive: isActive ?? this.isActive,
        signUpNewUserState: signUpNewUserState ?? this.signUpNewUserState,
        signUpNewUserMessage:
            signUpNewUserMessage ?? this.signUpNewUserMessage);
  }

  @override
  List<Object?> get props =>
      [isActive, signUpNewUserState, signUpNewUserMessage];
}

import 'package:elec_lib_app/core/erorr/faliure.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginFailure extends Faliure {
  LoginFailure(super.erorrMessage);
  factory LoginFailure.fromResponse(FirebaseAuthException erorrCode) {
    switch (erorrCode.code) {
      case 'wrong-password':
        return LoginFailure(
            '''the password is invalid for the given email, or the account corresponding to the email doesn't have a password set.''');
      case 'invalid-email':
        return LoginFailure('the email address is not valid.');
      case 'user-disabled':
        return LoginFailure(
            'user corresponding to the given email has been disabled.');
      case 'user-not-found':
        return LoginFailure(
            "there is no user corresponding to the given email.");
      default:
        return LoginFailure('An unexpected error occurred.');
    }
  }
}

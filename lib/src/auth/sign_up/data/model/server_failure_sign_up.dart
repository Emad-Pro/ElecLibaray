import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../core/erorr/faliure.dart';

class ServerFaliureSignUp extends Faliure {
  ServerFaliureSignUp(super.erorrMessage);
  factory ServerFaliureSignUp.fromResponse(FirebaseAuthException erorrCode) {
    switch (erorrCode.code) {
      case 'email-already-in-use':
        return ServerFaliureSignUp(
            'already exists an account with the given email address.');
      case 'invalid-email':
        return ServerFaliureSignUp('email address is not valid.');
      case 'weak-password':
        return ServerFaliureSignUp('password is not strong enough.');
      case 'operation-not-allowed':
        return ServerFaliureSignUp(
            "email/password accounts are not enabled. Enable email/password accounts in the Firebase Console, under the Auth tab.");
      default:
        return ServerFaliureSignUp('An unexpected error occurred.');
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:elec_lib_app/core/erorr/faliure.dart';
import 'package:elec_lib_app/src/auth/login/data/model/login_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class LoginRepository {
  Future<Either<Faliure, UserCredential>> signInWithEmailAndPassword(
      String email, String password);
}

class LoginRepositoryImp extends LoginRepository {
  @override
  Future<Either<Faliure, UserCredential>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final response = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return Right(response);
    } on FirebaseAuthException catch (e) {
      return Left(LoginFailure.fromResponse(e));
    }
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:elec_lib_app/core/erorr/faliure.dart';
import 'package:elec_lib_app/src/auth/login/data/model/login_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../model/login_model.dart';

abstract class LoginRepository {
  Future<Either<Faliure, LoginModel>> signInWithEmailAndPassword(
      String email, String password);
}

class LoginRepositoryImp extends LoginRepository {
  final firbaseAuth = FirebaseAuth.instance;
  final firebaseFirestore = FirebaseFirestore.instance;
  @override
  Future<Either<Faliure, LoginModel>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final requestAuth = await firbaseAuth.signInWithEmailAndPassword(
          email: email, password: password);

      final response = await firebaseFirestore
          .collection("users")
          .doc(requestAuth.user!.uid)
          .get();

      return Right(LoginModel.fromResponse(response));
    } on FirebaseAuthException catch (e) {
      return Left(LoginFailure.fromResponse(e));
    }
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:elec_lib_app/src/auth/sign_up/data/model/sign_up_set_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../core/erorr/faliure.dart';
import '../model/server_failure_sign_up.dart';
import '../model/sign_up_model.dart';

abstract class SignUpRepository {
  Future<Either<Faliure, String>> createUserWithEmailAndPassword(
      SignUpSetModel signupSetModel);
}

class SignUpRepositoryImp extends SignUpRepository {
  final firebaseAuth = FirebaseAuth.instance;
  final firebaseFirestor = FirebaseFirestore.instance;
  @override
  Future<Either<Faliure, String>> createUserWithEmailAndPassword(
      SignUpSetModel signupSetModel) async {
    try {
      final auth = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: signupSetModel.email,
        password: signupSetModel.password,
      );
      final userModel = SignUpModel(
        uid: auth.user!.uid,
        email: auth.user!.email!,
        userName: signupSetModel.userName,
      );
      await firebaseFirestor
          .collection('users')
          .doc(auth.user!.uid)
          .set(userModel.toFirestore());
      return right("Sign Up is Success");
    } on FirebaseAuthException catch (e) {
      return left(ServerFaliureSignUp.fromResponse(e));
    }
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';

class SignUpModel {
  final String uid;
  final String email;
  final String userName;

  SignUpModel({
    required this.uid,
    required this.email,
    required this.userName,
  });

  factory SignUpModel.fromFirestore(DocumentSnapshot doc) {
    return SignUpModel(
      uid: doc.id,
      email: doc['email'],
      userName: doc['userName'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'email': email,
      'password': userName,
    };
  }
}

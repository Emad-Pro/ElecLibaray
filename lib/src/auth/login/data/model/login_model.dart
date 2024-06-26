import 'package:cloud_firestore/cloud_firestore.dart';

class LoginModel {
  final String userName;
  final String email;
  final String uId;
  LoginModel({required this.userName, required this.email, required this.uId});
  factory LoginModel.fromResponse(DocumentSnapshot<Map<String, dynamic>> json) {
    return LoginModel(
        userName: json['userName'], email: json['userEmail'], uId: json['uId']);
  }
}

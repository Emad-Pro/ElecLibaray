import 'package:equatable/equatable.dart';

class SignUpSetModel extends Equatable {
  final String userName;
  final String password;
  final String email;

  const SignUpSetModel(
      {required this.userName, required this.password, required this.email});

  factory SignUpSetModel.fromJson(Map<String, dynamic> json) {
    return SignUpSetModel(
        userName: json['userName'],
        password: json['password'],
        email: json['email']);
  }

  Map<String, dynamic> toJson() => {
        "userName": userName,
        "password": password,
        "email": email,
      };

  @override
  List<Object?> get props => [userName, password, email];
}

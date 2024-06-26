import 'package:elec_lib_app/core/sharedPreferences/cahce_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserData {
  static String? uId;

  static initUser() async {
    final currentUid = FirebaseAuth.instance.currentUser?.uid;
    uId = currentUid;
  }
}

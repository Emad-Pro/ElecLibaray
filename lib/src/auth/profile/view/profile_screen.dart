import 'package:elec_lib_app/core/import.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 55,
            child: Icon(
              Icons.person,
              size: 45,
            ),
          ),
          Text("User Name")
        ],
      ),
    );
  }
}

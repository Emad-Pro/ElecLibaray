import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elec_lib_app/src/author/data/model/author_model.dart';

abstract class AuthorRepo {
  Future<List<AuthorModel>> fetchAuthorData();
}

class AuthorRepoImp extends AuthorRepo {
  @override
  Future<List<AuthorModel>> fetchAuthorData() async {
    final response =
        await FirebaseFirestore.instance.collection("authors_books").get();
    final authors = response.docs.map((toElement) {
      return AuthorModel.fromJson(toElement.data());
    }).toList();
    return authors;
  }
}

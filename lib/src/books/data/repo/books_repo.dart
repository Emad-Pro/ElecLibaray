import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/global_model/books_model.dart';

abstract class BooksRepo {
  Future<List<BooksModel>> fetchBooksWithAuthorId(String authorID);
}

class BooksRepoImp extends BooksRepo {
  Future<List<BooksModel>> fetchBooksWithAuthorId(String authorID) async {
    final response = await FirebaseFirestore.instance
        .collection("authors_books")
        .doc(authorID)
        .collection("books")
        .get();
    final books = response.docs.map((books) {
      return BooksModel.fromJson(books.data());
    }).toList();
    return books;
  }
}

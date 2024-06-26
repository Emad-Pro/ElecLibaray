import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elec_lib_app/src/auth/user_data/user_data.dart';

import '../../../../core/global_model/books_model.dart';

abstract class MainBooksRepo {
  Future<List<BooksModel>> fetchMyBooks();
  Future<List<BooksModel>> fetchWashlistBooks();
  Future<List<BooksModel>> fetchRecentlyAddedBooks();
}

class MainBooksRepoImp extends MainBooksRepo {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  @override
  Future<List<BooksModel>> fetchMyBooks() async {
    final response = await firebaseFirestore
        .collection("users")
        .doc(UserData.uId)
        .collection("mybooks")
        .get();
    final books = response.docs.map((toElement) {
      return BooksModel.fromJson(toElement.data());
    }).toList();
    return books;
  }

  @override
  Future<List<BooksModel>> fetchWashlistBooks() async {
    final response = await firebaseFirestore
        .collection("users")
        .doc(UserData.uId)
        .collection("wishlist")
        .get();
    final books = response.docs.map((toElement) {
      return BooksModel.fromJson(toElement.data());
    }).toList();
    return books;
  }

  @override
  Future<List<BooksModel>> fetchRecentlyAddedBooks() async {
    final response = firebaseFirestore.collection("authors_books");
    final querySnapshot = await response.get();

    final allBooks = <BooksModel>[];

    for (var authorDoc in querySnapshot.docs) {
      final authorId = authorDoc.id;
      final authorBooksCollection = response.doc(authorId).collection('books');

      final authorBooksQuerySnapshot = await authorBooksCollection.get();

      for (var bookDoc in authorBooksQuerySnapshot.docs) {
        final bookData = bookDoc.data(); // Get the book data
        final book =
            BooksModel.fromJson(bookData); // Convert book data to BooksModel

        allBooks.add(book); // Add the book to the allBooks list
      }
    }

    return allBooks;
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';

class BooksModel {
  String authroName;
  final String booksDetails;
  final String bookName;
  final String bookLogo;
  final int bookPage;
  final String bookVersion;
  final String category;
  final Timestamp bookDate;

  BooksModel(
      {required this.authroName,
      required this.booksDetails,
      required this.bookName,
      required this.bookLogo,
      required this.bookPage,
      required this.bookVersion,
      required this.category,
      required this.bookDate});

  factory BooksModel.fromJson(Map<String, dynamic> json) {
    return BooksModel(
        authroName: json['authorName'],
        booksDetails: json['bookDetails'],
        bookName: json['bookName'],
        bookLogo: json['bookLogo'],
        bookPage: json['bookPage'],
        bookVersion: json['bookVersion'],
        category: json['category'],
        bookDate: json['datetime']);
  }
  Map<String, dynamic> toMap() => {
        'authorName': authroName,
        'bookDetails': booksDetails,
        'bookName': bookName,
        'bookLogo': bookLogo,
        'bookPage': bookPage,
        'bookVersion': bookVersion,
        'category': category,
        'datetime': bookDate,
      };
}

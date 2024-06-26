import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elec_lib_app/core/import.dart';
import 'package:flutter/material.dart';

class AddbooksPage extends StatelessWidget {
  AddbooksPage({Key? key}) : super(key: key);
  final TextEditingController bookName = TextEditingController();
  final TextEditingController bookLogo = TextEditingController();
  final TextEditingController authorNAme = TextEditingController();
  final TextEditingController bookDetails = TextEditingController();
  final TextEditingController bookPrice = TextEditingController();
  final TextEditingController bookVersion = TextEditingController();
  final TextEditingController bookPAge = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            TextFormField(
              controller: bookName,
              decoration: const InputDecoration(hintText: "Book Name"),
            ),
            TextFormField(
              controller: bookLogo,
              decoration: const InputDecoration(hintText: "Book Logo"),
            ),
            TextFormField(
              controller: authorNAme,
              decoration: const InputDecoration(hintText: "Autor Name"),
            ),
            TextFormField(
              controller: bookDetails,
              decoration: const InputDecoration(hintText: "Book Details"),
            ),
            TextFormField(
              controller: bookPrice,
              decoration: const InputDecoration(hintText: "Book Price"),
            ),
            TextFormField(
              controller: bookVersion,
              decoration: const InputDecoration(hintText: "Book Version"),
            ),
            TextFormField(
              controller: bookPAge,
              decoration: const InputDecoration(hintText: "book Page"),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  if (bookName.text.isNotEmpty &&
                      bookLogo.text.isNotEmpty &&
                      authorNAme.text.isNotEmpty &&
                      bookDetails.text.isNotEmpty &&
                      bookPrice.text.isNotEmpty &&
                      bookVersion.text.isNotEmpty &&
                      bookPAge.text.isNotEmpty) {
                    FirebaseFirestore.instance
                        .collection("authors_books")
                        .doc('Emad younis')
                        .collection("books")
                        .doc()
                        .set({
                      "datetime": DateTime.now(),
                      "bookName": bookName.text,
                      "bookLogo": bookLogo.text,
                      "authorName": authorNAme.text,
                      "bookDetails": bookDetails.text,
                      "bookPrice": double.parse(bookPrice.text),
                      "bookVersion": bookVersion.text,
                      "bookPage": num.parse(bookPAge.text)
                    }).then((onValue) {});
                  }
                },
                child: Text("Upload"))
          ],
        ),
      ),
    );
  }
}

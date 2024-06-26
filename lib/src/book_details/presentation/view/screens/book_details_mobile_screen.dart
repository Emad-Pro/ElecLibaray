import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elec_lib_app/core/widget/build_item_listview_books.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../../core/global_model/books_model.dart';

class BookDetailsMobileScreen extends StatelessWidget {
  const BookDetailsMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: BuildItemListViewBooks(
                    colorText: color.onSurface,
                    bookModel: BooksModel(
                        authroName: 'شسيشسي',
                        booksDetails: 'شسيشسيشس',
                        bookName: 'شسيشسيشسيشسي',
                        bookLogo: 'شسيشسيشسيشس',
                        bookPage: 200,
                        bookVersion: '2',
                        category: 'شسيشسي',
                        bookDate: Timestamp.now()),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("${"Rating:"}    "),
                    RatingBarIndicator(
                      rating: 2.75,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: color.primary,
                        size: 10,
                      ),
                      itemCount: 5,
                      itemSize: 20.0,
                      direction: Axis.horizontal,
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${"Genre:"}      ${"Fantasy"}"),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        elevation: WidgetStateProperty.all<double>(0),
                        shape: WidgetStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        )),
                        backgroundColor:
                            WidgetStateProperty.all<Color>(color.primary)),
                    child: Text(
                      "Take it",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.surface),
                    ),
                  ),
                ),
                const Text(
                  randomText,
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

const String randomText =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vel imperdiet justo. Fusce congue sit amet orci et faucibus. Sed molestie tortor sed mi tempor, at tempor dui tincidunt. Donec posuere scelerisque odio. Integer fringilla magna ante, id aliquam ex volutpat vel. Pellentesque tincidunt arcu at aliquam consequat. Nulla sollicitudin fringilla nibh, quis interdum velit iaculis nec. ";

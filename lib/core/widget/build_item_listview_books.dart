import 'package:flutter/material.dart';

import '../global_model/books_model.dart';
import '../responsive_layout/app_styles.dart';

class BuildItemListViewBooks extends StatelessWidget {
  const BuildItemListViewBooks(
      {super.key, required this.colorText, required this.bookModel});
  final Color colorText;
  final BooksModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 170,
            width: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                bookModel.bookLogo,
                fit: BoxFit.fill,
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              bookModel.bookName,
              style: TextStyle(
                  color: colorText,
                  fontSize: getResponsiveFontSize(context, fontSize: 18)),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              bookModel.authroName,
              style: TextStyle(
                  color: colorText,
                  fontSize: getResponsiveFontSize(context, fontSize: 16)),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:elec_lib_app/core/import.dart';
import 'package:flutter/material.dart';

import '../../../../books/presentation/view/screens/books_layout.dart';
import '../../../data/model/author_model.dart';

class BuildAuthorGridViewItem extends StatelessWidget {
  const BuildAuthorGridViewItem({super.key, required this.authorModel});
  final AuthorModel authorModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        BlocProvider.of<HomeCubit>(context).changeSelectedPageDrawer(
            widgetLayout: BooksLayout(
          authorId: authorModel.authorName,
        ));
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 65,
            backgroundImage: NetworkImage(authorModel.authorImage),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(authorModel.authorName),
          )
        ],
      ),
    );
  }
}

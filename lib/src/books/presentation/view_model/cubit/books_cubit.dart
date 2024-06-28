import 'package:bloc/bloc.dart';
import 'package:elec_lib_app/core/enum/state.dart';
import 'package:elec_lib_app/src/books/data/repo/books_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/global_model/books_model.dart';

part 'books_state.dart';

class BooksCubit extends Cubit<BooksState> {
  BooksCubit(this.booksRepo) : super(const BooksState());
  final BooksRepo booksRepo;
  getBooksWithAuthorId(String authorID) async {
    final result = await booksRepo.fetchBooksWithAuthorId(authorID);
    emit(state.copyWith(
        booksWithAuthorState: RequestState.success,
        booksModelWithAuthor: result));
  }
}

part of 'books_cubit.dart';

class BooksState extends Equatable {
  const BooksState(
      {this.booksModelWithAuthor,
      this.booksWithAuthorState = RequestState.loading});
  final List<BooksModel>? booksModelWithAuthor;
  final RequestState booksWithAuthorState;

  BooksState copyWith(
      {List<BooksModel>? booksModelWithAuthor,
      RequestState? booksWithAuthorState}) {
    return BooksState(
      booksModelWithAuthor: booksModelWithAuthor ?? this.booksModelWithAuthor,
      booksWithAuthorState: booksWithAuthorState ?? this.booksWithAuthorState,
    );
  }

  @override
  List<Object?> get props => [booksModelWithAuthor, booksWithAuthorState];
}

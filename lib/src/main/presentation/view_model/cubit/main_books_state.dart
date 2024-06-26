part of 'main_books_cubit.dart';

class MainBooksState extends Equatable {
  final RequestState mainRequestState;

  final List<BooksModel>? mybooksModel;
  final List<BooksModel>? wishlistbooksModel;
  final List<BooksModel>? recentlyAddedBooksModel;

  const MainBooksState({
    this.mainRequestState = RequestState.loading,
    this.mybooksModel,
    this.wishlistbooksModel,
    this.recentlyAddedBooksModel,
  });
  MainBooksState copyWith({
    RequestState? mainRequestState,
    List<BooksModel>? mybooksModel,
    List<BooksModel>? wishlistbooksModel,
    List<BooksModel>? recentlyAddedBooksModel,
  }) {
    return MainBooksState(
      mainRequestState: mainRequestState ?? this.mainRequestState,
      mybooksModel: mybooksModel ?? this.mybooksModel,
      wishlistbooksModel: wishlistbooksModel ?? this.wishlistbooksModel,
      recentlyAddedBooksModel:
          recentlyAddedBooksModel ?? this.recentlyAddedBooksModel,
    );
  }

  @override
  List<Object?> get props => [
        mainRequestState,
        mybooksModel,
        wishlistbooksModel,
        recentlyAddedBooksModel,
      ];
}

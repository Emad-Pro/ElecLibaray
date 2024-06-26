import 'package:bloc/bloc.dart';
import 'package:elec_lib_app/core/enum/state.dart';
import 'package:elec_lib_app/src/main/data/repo/main_books_repo.dart';
import 'package:equatable/equatable.dart';
import '../../../../../core/global_model/books_model.dart';

part 'main_books_state.dart';

class MainBooksCubit extends Cubit<MainBooksState> {
  MainBooksCubit(this.mainBooksRepo) : super(const MainBooksState());
  final MainBooksRepo mainBooksRepo;

  getMainData() async {
    await getRecentlyAddedBooks();
    await getMyBooks();
    await getWishList();
    emit(state.copyWith(mainRequestState: RequestState.success));
  }

  getRecentlyAddedBooks() async {
    final result = await mainBooksRepo.fetchRecentlyAddedBooks();
    emit(state.copyWith(
      recentlyAddedBooksModel: result,
    ));
  }

  getMyBooks() async {
    final result = await mainBooksRepo.fetchMyBooks();
    emit(state.copyWith(
      mybooksModel: result,
    ));
  }

  getWishList() async {
    final result = await mainBooksRepo.fetchWashlistBooks();
    emit(state.copyWith(
      wishlistbooksModel: result,
    ));
  }
}

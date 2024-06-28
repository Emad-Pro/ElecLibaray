import 'package:bloc/bloc.dart';
import 'package:elec_lib_app/core/enum/state.dart';
import 'package:elec_lib_app/src/author/data/model/author_model.dart';
import 'package:elec_lib_app/src/author/data/repo/author_repo.dart';
import 'package:equatable/equatable.dart';

part 'author_state.dart';

class AuthorCubit extends Cubit<AuthorState> {
  AuthorCubit(this.authorRepo) : super(AuthorState());
  final AuthorRepo authorRepo;
  getAuthors() async {
    final result = await authorRepo.fetchAuthorData();
    emit(state.copyWith(
        authorModel: result, authorRequestState: RequestState.success));
  }
}

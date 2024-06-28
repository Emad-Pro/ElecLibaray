part of 'author_cubit.dart';

class AuthorState extends Equatable {
  final RequestState authorRequestState;
  final List<AuthorModel>? authorModel;

  const AuthorState(
      {this.authorRequestState = RequestState.loading, this.authorModel});

  AuthorState copyWith(
      {List<AuthorModel>? authorModel, RequestState? authorRequestState}) {
    return AuthorState(
      authorModel: authorModel ?? this.authorModel,
      authorRequestState: authorRequestState ?? this.authorRequestState,
    );
  }

  @override
  List<Object?> get props => [authorRequestState, authorModel];
}

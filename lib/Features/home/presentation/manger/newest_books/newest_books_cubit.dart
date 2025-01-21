import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entitiy.dart';
import 'package:bookly_app/Features/home/domain/use_case/fetch_news_books_use_case.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.fetchNewsBooksUseCase) : super(NewestBooksInitial());
  final FetchNewsBooksUseCase fetchNewsBooksUseCase;
  fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await fetchNewsBooksUseCase.call();
    result.fold(
      (failure) {
        emit(NewestBooksFailure(errMessage: failure.errMessage));
      },
      (books) {
        emit(NewestBooksSuccess(books: books));
      },
    );
  }
}

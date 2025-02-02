import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entitiy.dart';
import 'package:bookly_app/Features/home/domain/use_case/fetch_news_books_use_case.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.fetchNewsBooksUseCase) : super(NewestBooksInitial());
  final FetchNewsBooksUseCase fetchNewsBooksUseCase;
  fetchNewestBooks({int pageNum = 0}) async {
    if (pageNum == 0) {
      emit(NewestBooksLoading());
    } else {
      emit(NewestBooksPaggingLoading());
    }
    var result = await fetchNewsBooksUseCase.call(pageNum);
    result.fold(
      (failure) {
        if (pageNum == 0) {
          emit(NewestBooksFailure(errMessage: failure.errMessage));
        } else {
          emit(NewestBooksPaggingFailure(errMessage: failure.errMessage));
        }
      },
      (books) {
        emit(NewestBooksSuccess(books: books));
      },
    );
  }
}

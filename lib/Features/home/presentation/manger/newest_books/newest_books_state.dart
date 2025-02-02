part of 'newest_books_cubit.dart';

@immutable
abstract class NewestBooksState {}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}
class NewestBooksPaggingLoading extends NewestBooksState {}
class NewestBooksFailure extends NewestBooksState {
  final String errMessage;

  NewestBooksFailure({required this.errMessage});
}


class NewestBooksPaggingFailure extends NewestBooksState {
  final String errMessage;

  NewestBooksPaggingFailure({required this.errMessage});
}

class NewestBooksSuccess extends NewestBooksState {
  final List<BookEntitiy> books;

  NewestBooksSuccess({required this.books});
}

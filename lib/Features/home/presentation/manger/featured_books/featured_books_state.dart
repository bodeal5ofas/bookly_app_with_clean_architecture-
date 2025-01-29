part of 'featured_books_cubit.dart';

@immutable
abstract class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksPagintionLoading extends FeaturedBooksState {}

class FeaturedBooksPagintionFailure extends FeaturedBooksState {
  final String errMessage;

  FeaturedBooksPagintionFailure({required this.errMessage});
}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessage;

  FeaturedBooksFailure({required this.errMessage});
}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookEntitiy> books;

  FeaturedBooksSuccess({required this.books});
}

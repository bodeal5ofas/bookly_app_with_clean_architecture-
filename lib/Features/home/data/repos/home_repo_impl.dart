import 'package:bookly_app/Core/errors/failure.dart';
import 'package:bookly_app/Features/home/data/data_sorecs/home_local_data_source.dart';
import 'package:bookly_app/Features/home/data/data_sorecs/home_remote_data_source.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entitiy.dart';
import 'package:bookly_app/Features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});
  @override
  Future<Either<Failure, List<BookEntitiy>>> fetchFeaturedBooks() async {
    try {
      List<BookEntitiy> books;
      books = homeLocalDataSource.fetchFetaredBooks();
      if (books.isNotEmpty) {
        return Right(books);
      }
      books = await homeRemoteDataSource.fetchFeaturedBooks();
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(
          ServerFailure(errMessage: 'There is an error, please try again'));
    }
  }

  @override
  Future<Either<Failure, List<BookEntitiy>>> fetchNewsBooks() async {
    try {
      List<BookEntitiy> books;
      books = homeLocalDataSource.fetchNewsBooks();
      if (books.isNotEmpty) {
        return Right(books);
      }
      books = await homeRemoteDataSource.fetchNewsBooks();
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(
          ServerFailure(errMessage: 'There is an error, please try again'));
    }
  }
}

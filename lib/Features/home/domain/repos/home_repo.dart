import 'package:bookly_app/Core/errors/failure.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entitiy.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntitiy>>> fetchFeaturedBooks({int pageNum=0});
  Future<Either<Failure, List<BookEntitiy>>> fetchNewsBooks({int pagenum=0});
}

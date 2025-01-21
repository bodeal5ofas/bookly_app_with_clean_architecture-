import 'package:bookly_app/Core/errors/failure.dart';
import 'package:bookly_app/Core/use_cases/use_case.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entitiy.dart';
import 'package:bookly_app/Features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewsBooksUseCase extends UseCase<List<BookEntitiy>, void> {
  HomeRepo homeRepo;
  FetchNewsBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntitiy>>> call([void parm]) {
    return homeRepo.fetchNewsBooks();
  }
}

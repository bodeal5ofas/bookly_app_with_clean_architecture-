import 'package:bookly_app/Core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Parm> {
  Future<Either<Failure, Type>> call([Parm parm]);
}

class NoParam {}

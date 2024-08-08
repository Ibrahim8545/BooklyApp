import 'package:booklyapp/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<T,param>
{
  Future<Either<Failure,T>> call([param param]);
}


class NoParam{}
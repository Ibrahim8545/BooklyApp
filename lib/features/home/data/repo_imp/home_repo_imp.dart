import 'package:booklyapp/core/errors/failure.dart';
import 'package:booklyapp/features/home/domain/enties/book_entity.dart';
import 'package:booklyapp/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp extends HomeRepo
{
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewsBooks() {
    // TODO: implement fetchNewsBooks
    throw UnimplementedError();
  }

}
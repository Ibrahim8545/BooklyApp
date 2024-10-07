import 'package:booklyapp/core/errors/failure.dart';
import 'package:booklyapp/features/home/data/data_sources/home_local_data_sources.dart';
import 'package:booklyapp/features/home/domain/enties/book_entity.dart';
import 'package:booklyapp/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp extends HomeRepo {
  final HomeRemoteDataSourcse homeRemoteDataSourcse;
  final HomeLocalDataSourcseImp homeLocalDataSourcse;

  HomeRepoImp(
      {required this.homeLocalDataSourcse,
      required this.homeRemoteDataSourcse});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    List<BookEntity> books;
    try {
      books = homeLocalDataSourcse.fetchFeaturedBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSourcse.fetchFeaturedBooks();
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewsBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSourcse.fetchNewsBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSourcse.fetchNewsBooks();
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}

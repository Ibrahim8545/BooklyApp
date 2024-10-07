import 'package:booklyapp/core/errors/failure.dart';
import 'package:booklyapp/features/home/data/data_sources/home_local_data_sources.dart';
import 'package:booklyapp/features/home/domain/enties/book_entity.dart';
import 'package:booklyapp/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp extends HomeRepo
{
  final HomeRemoteDataSourcse homeRemoteDataSourcse;
  final HomeLocalDataSourcseImp homeLocalDataSourcse;

  HomeRepoImp({required this.homeLocalDataSourcse,required this.homeRemoteDataSourcse});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks()async
   {
    
    try {
      var booklist=homeLocalDataSourcse.fetchFeaturedBooks();
      if(booklist.isNotEmpty)
      {
        return right(booklist);
      }
      var book=await homeRemoteDataSourcse.fetchFeaturedBooks();
      return right(book);
    } catch (e) {
      return left(Failure());
    }
  
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewsBooks() async{
       try {
      var booklist=homeLocalDataSourcse.fetchNewsBooks();
      if(booklist.isNotEmpty)
      {
        return right(booklist);
      }
      var book=await homeRemoteDataSourcse.fetchNewsBooks();
      return right(book);
    } catch (e) {
      return left(Failure());
    }
  }

}
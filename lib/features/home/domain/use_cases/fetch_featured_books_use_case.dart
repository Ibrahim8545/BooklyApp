import 'package:booklyapp/features/home/domain/enties/book_entity.dart';
import 'package:booklyapp/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';

class FetchFeaturedBooksUseCase
{
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);


    Future<Either<Failure,List<BookEntity>>>fetchFeaturedBooks()
    {
      //check permission
      //check anything or add anything
      return homeRepo.fetchFeaturedBooks();

    }



    Future<Either<Failure,List<BookEntity>>>fetchNewsBooks()
    {
      return homeRepo.fetchNewsBooks();
    }


}
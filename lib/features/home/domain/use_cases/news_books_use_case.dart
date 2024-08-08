import 'package:booklyapp/core/use_case.dart';
import 'package:booklyapp/features/home/domain/enties/book_entity.dart';
import 'package:booklyapp/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';

 class FetchNewsetBooksUseCase extends UseCase<List<BookEntity>,NoParam >
{
  final HomeRepo homeRepo;
   FetchNewsetBooksUseCase(this.homeRepo);
  
  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async
  {
    return await homeRepo.fetchNewsBooks();
  }
  

}










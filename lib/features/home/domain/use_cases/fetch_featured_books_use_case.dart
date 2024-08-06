import 'package:booklyapp/features/home/domain/enties/book_entity.dart';
import 'package:booklyapp/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';

 class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>,NoParam >
{
  final HomeRepo homeRepo;
   FetchFeaturedBooksUseCase(this.homeRepo);
  
  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async
  {
    return await homeRepo.fetchFeaturedBooks();
  }
  

}






abstract class UseCase<T,param>
{
  Future<Either<Failure,T>> call([param param]);
}



class NoParam{}
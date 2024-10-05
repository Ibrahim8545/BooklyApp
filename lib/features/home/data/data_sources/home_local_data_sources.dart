import 'package:booklyapp/features/home/domain/enties/book_entity.dart';

abstract class HomeRemoteDataSourcse {
  List<BookEntity> fetchFeaturedBooks();

  List<BookEntity> fetchNewsBooks();
}

class HomeLocalDataSourcseImp extends HomeRemoteDataSourcse
{
  @override
List<BookEntity> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchNewsBooks() {
    // TODO: implement fetchNewsBooks
    throw UnimplementedError();
  }

}
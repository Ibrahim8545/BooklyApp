import 'package:booklyapp/features/home/domain/enties/book_entity.dart';

abstract class HomeRemoteDataSourcse {
  List<BookEntity> fetchFeaturedBooks();

  List<BookEntity> fetchNewsBooks();
}

class HomeLocalDataSourcseImp extends HomeRemoteDataSourcse
{
  @override
  Future<List<dynamic>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<List<dynamic>> fetchNewsBooks() {
    // TODO: implement fetchNewsBooks
    throw UnimplementedError();
  }

}
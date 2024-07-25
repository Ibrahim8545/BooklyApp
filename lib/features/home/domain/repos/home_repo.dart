import 'package:booklyapp/features/home/domain/enties/book_entity.dart';

abstract class HomeRepo
{
  Future<List<BookEntity>>fetchFeaturedBooks();
  Future<List<BookEntity>>fetchNewsBooks();
}
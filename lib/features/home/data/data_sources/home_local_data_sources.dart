import 'package:booklyapp/constants.dart';
import 'package:booklyapp/features/home/domain/enties/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeRemoteDataSourcse {
  List<BookEntity> fetchFeaturedBooks();

  List<BookEntity> fetchNewsBooks();
}

class HomeLocalDataSourcseImp extends HomeRemoteDataSourcse
{
  @override
List<BookEntity> fetchFeaturedBooks() {
    var box=Hive.box<BookEntity>(kFeaturedBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewsBooks() {
       var box=Hive.box<BookEntity>(kNewestBox);
    return box.values.toList();
  }

}
  import 'package:booklyapp/features/home/domain/enties/book_entity.dart';
import 'package:hive/hive.dart';

void saveBoxData(List<BookEntity> books,String boxName) {
      var box=Hive.box(boxName);
    box.addAll(books);
  }

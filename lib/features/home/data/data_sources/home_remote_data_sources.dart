import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/functios/save_data.dart';
import 'package:booklyapp/features/home/domain/enties/book_entity.dart';
import 'package:booklyapp/core/utils/api_servecies.dart';
import 'package:booklyapp/features/home/data/models/book_model.dart';
import 'package:hive/hive.dart';

abstract class HomeRemoteDataSourcse {
  Future<List<BookEntity>> fetchFeaturedBooks();

  Future<List<BookEntity>> fetchNewsBooks();
}

class HomeSourceDataImp extends HomeRemoteDataSourcse {
  final ApiService apiService;
  HomeSourceDataImp(this.apiService);

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=programming');

    List<BookEntity> books = getListBooks(data);

    saveBoxData(books,kFeaturedBox);

    return books;
  }


  
  @override
  Future<List<BookEntity>> fetchNewsBooks()async {
     var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&sorting=newest&q=programming');

    List<BookEntity> books = getListBooks(data);
     saveBoxData(books,kNewestBox);
    return books;
  }

  List<BookEntity> getListBooks(Map<String, dynamic> data) {
    List<BookEntity> books = [];

    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }

}

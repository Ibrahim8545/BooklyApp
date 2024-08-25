
import 'package:booklyapp/features/home/domain/enties/book_entity.dart';
import 'package:booklyapp/core/utils/api_servecies.dart';
import 'package:booklyapp/features/home/data/models/book_model.dart';
abstract class HomeRemoteDataSourcse 
{
  Future<List<BookEntity>>fetchFeaturedBooks();

  Future<List<BookEntity>>fetchNewsBooks();
} 

class HomeSourceDataImp extends HomeRemoteDataSourcse
{
  final ApiService apiService;
  HomeSourceDataImp(this.apiService);
  
  @override
  Future<List<BookEntity>> fetchFeaturedBooks()async {
    
  var data= await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=programming');

  List<BookEntity> books = getListBooks(data);

return books;
  }

  List<BookEntity> getListBooks(Map<String, dynamic> data) {
    List<BookEntity>books=[];
    
    for(var bookMap in data['items'])
    {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewsBooks() {
    // TODO: implement fetchNewsBooks
    throw UnimplementedError();
  }
  
}
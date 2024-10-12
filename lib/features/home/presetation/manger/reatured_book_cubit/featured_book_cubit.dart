import 'package:booklyapp/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:booklyapp/features/home/presetation/manger/reatured_book_cubit/featured_book_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState>
{
  FeaturedBooksCubit(this.fetchFeaturedBooksUseCase):super(FeaturedBooksIntitial());
  final FetchFeaturedBooksUseCase fetchFeaturedBooksUseCase;

  Future<void>fetchBooks()async
  {

    emit(FeaturedBooksLoading());
    var result=await fetchFeaturedBooksUseCase.call();
    result.fold(
      (failure) {
        emit(FeaturedBooksError(failure.message));
      },
      (books) {
        emit(FeaturedBooksSuccess(books));
      },
    );
      
    
  }
  
}
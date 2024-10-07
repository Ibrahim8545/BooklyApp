import 'package:booklyapp/features/home/domain/enties/book_entity.dart';

abstract class FeaturedBooksState{}
 
 class FeaturedBooksIntitial extends FeaturedBooksState{}

 class FeaturedBooksLoading extends FeaturedBooksState{}

 class FeaturedBooksError extends FeaturedBooksState{

  // ignore: non_constant_identifier_names
  String error;

  FeaturedBooksError(this.error);
 }

 class FeaturedBooksSuccess extends FeaturedBooksState{
  List<BookEntity>books;
  FeaturedBooksSuccess(this.books);
 }



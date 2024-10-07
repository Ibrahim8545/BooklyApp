import 'package:booklyapp/features/home/presetation/manger/reatured_book_cubit/featured_book_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState>
{
  FeaturedBooksCubit():super(FeaturedBooksIntitial());
  
}
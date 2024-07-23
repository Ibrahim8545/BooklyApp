import 'package:booklyapp/core/utils/systles.dart';
import 'package:booklyapp/core/widget/custom_button.dart';
import 'package:booklyapp/features/home/presetation/views/wiget/book_action.dart';
import 'package:booklyapp/features/home/presetation/views/wiget/book_rating.dart';
import 'package:booklyapp/features/home/presetation/views/wiget/custom_book_details_app_bar.dart';
import 'package:booklyapp/features/home/presetation/views/wiget/custom_list_view_items.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/systles.dart';



class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
         
          
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: const CustomBookImage(),
          ),
          const SizedBox(height: 47,),
          Text(
            'The Jungle Book',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6,),
           Text(
            'Rudyard Kilpling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
              color: Colors.white.withOpacity(.7)
            ),
          ),
          const SizedBox(height: 18,),
          BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(height: 37,),
          const BooksAction()
        ],
      ),
    );
  }
}




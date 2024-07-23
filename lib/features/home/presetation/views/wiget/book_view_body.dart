import 'package:booklyapp/features/home/presetation/views/wiget/custom_book_details_app_bar.dart';
import 'package:booklyapp/features/home/presetation/views/wiget/custom_list_view_items.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return  Padding(

      padding:const   EdgeInsets.symmetric(horizontal:30),
      child:  Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width *.17),
            child:const CustomBookImage(),
          )
          ],
      ),
    );
  }
}

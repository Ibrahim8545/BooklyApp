
import 'package:booklyapp/features/home/presetation/views/wiget/custom_list_view_items.dart';
import 'package:flutter/material.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
       height:  MediaQuery.of(context).size.height *.15,
      child: ListView.builder(
        itemCount: 100,
        scrollDirection: Axis.horizontal,
        itemBuilder:(context, index) {
          return const  Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookImage(),
          );
        }, 
        ),
    );
  }
}



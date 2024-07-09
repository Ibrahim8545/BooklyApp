
import 'package:booklyapp/features/home/presetation/views/wiget/custom_list_view_items.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height:  MediaQuery.of(context).size.height *.3,
      child: ListView.builder(
        itemCount: 100,
        scrollDirection: Axis.horizontal,
        itemBuilder:(context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomListViewItems(),
          );
        }, 
        ),
    );
  }
}
import 'package:booklyapp/features/home/presetation/views/wiget/best_seller_list_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder:(context, index) {
        return const   Padding(
          padding:  EdgeInsets.symmetric(vertical: 10),
          child: BestSellerListViewItem(),
        );
      },
      itemCount: 100,
       );
       
  }
}
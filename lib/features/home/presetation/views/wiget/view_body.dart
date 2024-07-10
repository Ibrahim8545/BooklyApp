import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/systles.dart';
import 'package:booklyapp/features/home/presetation/views/wiget/best_seller_list_item.dart';
import 'package:booklyapp/features/home/presetation/views/wiget/custom_app_bar.dart';
import 'package:booklyapp/features/home/presetation/views/wiget/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18
            ),
      BestSellerListViewItem()
        ],
      ),
    );
  }
}


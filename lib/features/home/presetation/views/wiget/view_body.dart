import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/systles.dart';
import 'package:booklyapp/features/home/presetation/views/wiget/custom_app_bar.dart';
import 'package:booklyapp/features/home/presetation/views/wiget/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
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
            style: Styles.titleMedium
            ),
      BestSellerListViewItem()
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 128,
      child: AspectRatio(
        aspectRatio: 2.5/4,
        child: Container(
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.red,
            image:const  DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.testImage)
              ),
          ),
        ),
      ),
    );
  }
}
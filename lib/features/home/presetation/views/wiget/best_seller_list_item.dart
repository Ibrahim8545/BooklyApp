import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/features/home/presetation/views/wiget/book_rating.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/systles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 128,
      child: Row(children: [
        AspectRatio(
          aspectRatio: 2.5 / 4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.red,
              image: const DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(AssetsData.testImage)),
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Text(
                  'Harry Potter and the Goblet of Fire',
                  style: Styles.textStyle20,
                  maxLines: 2,
                  //put piont when text is large (..)
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                'J.K. Rowling',
                style: Styles.textStyle14,
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    '19.99 €',
                    style: Styles.textStyle20
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const BookRating()
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

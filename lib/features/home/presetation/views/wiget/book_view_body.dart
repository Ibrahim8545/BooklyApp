import 'package:booklyapp/core/utils/systles.dart';
import 'package:booklyapp/features/home/presetation/views/wiget/book_action.dart';
import 'package:booklyapp/features/home/presetation/views/wiget/book_rating.dart';
import 'package:booklyapp/features/home/presetation/views/wiget/custom_book_details_app_bar.dart';
import 'package:booklyapp/features/home/presetation/views/wiget/custom_list_view_items.dart';
import 'package:booklyapp/features/home/presetation/views/wiget/simlar_box_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          // to make body not scroll
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .17),
                  child: const CustomBookImage(),
                ),
                const SizedBox(
                  height: 35,
                ),
                Text(
                  'The Jungle Book',
                  style:
                      Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Rudyard Kilpling',
                  style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(.7)),
                ),
                const SizedBox(
                  height: 18,
                ),
                BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 35,
                ),
                const BooksAction(),
                const Expanded(
                  child: SizedBox(
                    height: 30,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle16
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SimilarBookListView(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

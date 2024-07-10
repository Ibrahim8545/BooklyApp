
import 'package:flutter/material.dart';

import '../../../../../core/utils/systles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
        ),
        const  SizedBox(width: 6.3,),
        const Text(
          '4.8',
          style: Styles.textStyle14,
        ),

        const  SizedBox(width: 5,),
        Text(
          '(2330)',
          style: Styles.textStyle14.copyWith(color: Color(0xff707070)),
        ),
      ],
    );
  }
}

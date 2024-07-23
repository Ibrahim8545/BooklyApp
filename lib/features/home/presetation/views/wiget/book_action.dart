
import 'package:booklyapp/core/widget/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       Expanded(child: CustomButton(
        text: '19.99€',
        backgroundColor: Colors.white,
        textColor: Colors.black,
        borderRadius:const BorderRadius.only(
          topLeft: Radius.circular(12),
          bottomLeft: Radius.circular(12),
        ) ,
       ),
       ),
       Expanded(child: CustomButton(
        fontSize: 16,
        text:'Free Preview' ,
        backgroundColor: Color(0xffEF8262),
        textColor: Colors.white,
        borderRadius:const BorderRadius.only(
          bottomRight: Radius.circular(12),
          topRight: Radius.circular(12),
        ) ,
       ),
       ),
      ],
    );
  }
}
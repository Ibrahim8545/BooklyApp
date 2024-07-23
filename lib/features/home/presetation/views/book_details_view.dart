import 'package:booklyapp/features/home/presetation/views/wiget/book_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const  SafeArea(
      child:   Scaffold(
        body: BookDetailsViewBody(),
      ),
    );
  }
}
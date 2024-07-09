import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/features/home/presetation/views/wiget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),

      ],
    );
  }
}



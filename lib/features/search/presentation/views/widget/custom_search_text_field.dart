
import 'package:flutter/material.dart';

class CustomSearchTexField extends StatelessWidget {
  const CustomSearchTexField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          hintText: 'Search',
          suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 22,
              ))),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return  OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white),
        );
  }
}

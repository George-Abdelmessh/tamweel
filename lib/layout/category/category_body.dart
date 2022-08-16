import 'package:flutter/material.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Category Screen Demo',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }
}
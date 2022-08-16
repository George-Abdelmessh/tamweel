import 'package:flutter/material.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Search Screen Demo',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }
}
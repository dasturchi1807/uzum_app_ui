import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  final String title;
  const Favourite({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title, style: TextStyle(
          fontSize: 30
      ),),
    );
  }
}

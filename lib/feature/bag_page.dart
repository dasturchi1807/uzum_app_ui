import 'package:flutter/material.dart';

class Bag extends StatelessWidget {
  final String title;
  const Bag({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title, style: TextStyle(
          fontSize: 30
      ),),
    );
  }
}

import 'package:flutter/material.dart';

class Cabinet extends StatelessWidget {
  final String title;
  const Cabinet({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title, style: TextStyle(
          fontSize: 30
      ),),
    );
  }
}

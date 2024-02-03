import 'package:flutter/material.dart';

class flipcard extends StatelessWidget {
  final String text;
  flipcard({required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Center(child: Text(text)),
    );
  }
}

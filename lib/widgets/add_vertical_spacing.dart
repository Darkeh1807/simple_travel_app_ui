import 'package:flutter/material.dart';

class AddVerticalSpacing extends StatelessWidget {
  final double value;
  const AddVerticalSpacing({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: value,
    );
  }
}
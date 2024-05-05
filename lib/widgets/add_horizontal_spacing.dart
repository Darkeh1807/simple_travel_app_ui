import 'package:flutter/material.dart';

class AddHorizontalSpacing extends StatelessWidget {
  final double value;
  const AddHorizontalSpacing({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: value,
    );
  }
}

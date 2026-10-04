import 'package:flutter/material.dart';

class CustomOptions extends StatelessWidget {
  final String option;
  const CustomOptions({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          option,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        Spacer(),
        Text(
          "See All",
          style: TextStyle(
            decoration: TextDecoration.underline,
            decorationColor: Colors.orange,
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}

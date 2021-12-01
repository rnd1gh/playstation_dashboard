import 'package:flutter/material.dart';

class SmallTextCustom extends StatelessWidget {
  final String title;
  const SmallTextCustom({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
      decoration: BoxDecoration(
        color: Colors.blue.shade800,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 12.0),
      ),
    );
  }
}

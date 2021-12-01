import 'package:flutter/material.dart';
import 'package:playstation_dashboard/config/constants.dart';

class TagGame extends StatelessWidget {
  final String title;
  final bool isActive;
  const TagGame({
    Key? key,
    required this.title,
    this.isActive = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: kDefaultThinPadding),
      padding: const EdgeInsets.symmetric(
        vertical: 1.0,
        horizontal: 5.0,
      ),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(22.0),
        border: Border.all(
          width: 1.0,
          color: Colors.white.withOpacity(0.2),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
          color:
              isActive ? Colors.green.shade800 : Colors.white.withOpacity(0.8),
        ),
      ),
    );
  }
}

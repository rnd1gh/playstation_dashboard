import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:playstation_dashboard/config/constants.dart';

class SideMenuButton extends StatelessWidget {
  final String iconUrl;
  final String title;
  final bool isSelected;
  final VoidCallback onPress;

  const SideMenuButton({
    Key? key,
    required this.iconUrl,
    required this.title,
    required this.isSelected,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(
          bottom: kDefaultPadding,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding,
          horizontal: kDefaultPadding,
        ),
        decoration: BoxDecoration(
          borderRadius: isSelected ? BorderRadius.circular(20.0) : null,
          color: isSelected ? Colors.blue.shade800 : null,
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Colors.blue.shade600,
                    offset: const Offset(0, 1),
                    blurRadius: 5.0,
                  ),
                ]
              : null,
        ),
        child: Row(
          children: [
            SizedBox(
              height: 24.0,
              width: 24.0,
              child: SvgPicture.asset(
                iconUrl,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: kDefaultPadding,
            ),
            Text(
              title,
              style: TextStyle(
                color:
                    isSelected ? Colors.white : Colors.white.withOpacity(0.5),
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

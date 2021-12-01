import 'package:flutter/material.dart';
import 'package:playstation_dashboard/config/constants.dart';

class FollowButton extends StatelessWidget {
  final bool hasFollowed;
  final VoidCallback onPress;
  const FollowButton({
    Key? key,
    this.hasFollowed = false,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultExThinPadding,
        horizontal: kDefaultPadding,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white.withOpacity(0.2),
      ),
      child: Text(
        hasFollowed ? 'Following' : 'Follow',
        style: TextStyle(
          color: hasFollowed ? Colors.orange : Colors.white,
        ),
      ),
    );
  }
}

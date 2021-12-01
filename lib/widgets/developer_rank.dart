import 'package:flutter/material.dart';
import 'package:playstation_dashboard/config/constants.dart';
import 'package:playstation_dashboard/widgets/follow_button.dart';

class DeveloperRank extends StatelessWidget {
  final int index;
  final String name;
  final int games;
  final String logoUrl;
  final bool hasFollowed;
  final Color logoColor;
  const DeveloperRank({
    Key? key,
    required this.index,
    required this.name,
    required this.games,
    required this.logoUrl,
    required this.hasFollowed,
    required this.logoColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: kDefaultPadding,
      ),
      child: Row(
        children: [
          Text(
            '$index',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            width: kDefaultExThinPadding,
          ),
          Container(
            height: 40.0,
            width: 40.0,
            padding: const EdgeInsets.all(
              kDefaultExThinPadding,
            ),
            decoration: BoxDecoration(
              color: logoColor,
              shape: BoxShape.circle,
            ),
            child: Image.asset(logoUrl),
          ),
          const SizedBox(
            width: kDefaultExThinPadding,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                '$games games',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
          const Spacer(),
          FollowButton(
            hasFollowed: hasFollowed,
            onPress: () {},
          ),
        ],
      ),
    );
  }
}

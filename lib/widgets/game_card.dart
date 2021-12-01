import 'package:flutter/material.dart';
import 'package:playstation_dashboard/config/constants.dart';
import 'package:playstation_dashboard/widgets/tag_game.dart';

class GameCard extends StatelessWidget {
  final String gameName;
  final String gameImageUrl;
  final double salePercent;
  final List<TagGame> tags;

  const GameCard({
    Key? key,
    required this.gameName,
    required this.gameImageUrl,
    this.salePercent = 0,
    required this.tags,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constranst) {
        double maxWidth = constranst.maxWidth;
        double maxHeight = constranst.maxHeight;
        return Container(
          decoration: BoxDecoration(
            color: primaryDarkColor,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              width: 1.0,
              color: Colors.white.withOpacity(0.2),
            ),
          ),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: (maxWidth / 3) / maxHeight,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                  ),
                  child: Image.asset(
                    gameImageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: kDefaultPadding,
                    horizontal: kDefaultPadding,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // tag game
                      Row(
                        children: [...tags],
                      ),
                      if (salePercent != 0)
                        Row(
                          children: [
                            const Spacer(),
                            Text(
                              '-$salePercent%',
                              style: const TextStyle(
                                color: Colors.green,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      else
                        const SizedBox(
                          height: kDefaultExThinPadding,
                        ),
                      Text(
                        gameName.toUpperCase(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 48.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

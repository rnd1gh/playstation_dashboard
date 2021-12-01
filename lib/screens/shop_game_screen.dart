import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:playstation_dashboard/config/constants.dart';
import 'package:playstation_dashboard/models/developer_model.dart';
import 'package:playstation_dashboard/widgets/banner_slider.dart';
import 'package:playstation_dashboard/widgets/custom_divider.dart';
import 'package:playstation_dashboard/widgets/developer_rank.dart';
import 'package:playstation_dashboard/widgets/follow_button.dart';
import 'package:playstation_dashboard/widgets/game_card.dart';
import 'package:playstation_dashboard/widgets/small_text_custom.dart';
import 'package:playstation_dashboard/widgets/tag_game.dart';

class ShopGameScreen extends StatelessWidget {
  const ShopGameScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double maxWidth = size.width;
    double bannerHeight = 400.0;
    return Expanded(
      child: StreamBuilder<Object>(
        stream: null,
        builder: (context, snapshot) {
          return Row(
            children: [
              // body center
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(
                    kDefaultFatPadding,
                  ),
                  child: Column(
                    children: [
                      // banner silder
                      BannerSlider(
                        bannerHeight: bannerHeight,
                        maxWidth: maxWidth,
                      ),
                      const SizedBox(
                        height: kDefaultFatPadding,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            'For You',
                            style:
                                TextStyle(color: Colors.white, fontSize: 24.0),
                          ),
                          SizedBox(
                            width: kDefaultPadding,
                          ),
                          SmallTextCustom(title: '228'),
                        ],
                      ),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: (maxWidth / 2) / 300,
                          padding: const EdgeInsets.all(kDefaultWidePadding),
                          crossAxisSpacing: kDefaultFatPadding,
                          mainAxisSpacing: kDefaultFatPadding,
                          children: const [
                            GameCard(
                              gameName: 'FarCry6',
                              gameImageUrl: "assets/farcry6.jpg",
                              salePercent: 22.5,
                              tags: [
                                TagGame(
                                  title: 'PS5',
                                ),
                                TagGame(
                                  title: 'Gold Edition',
                                  isActive: false,
                                ),
                              ],
                            ),
                            GameCard(
                              gameName: 'Fifa22',
                              gameImageUrl: "assets/fifa22.jpeg",
                              tags: [
                                TagGame(
                                  title: 'PS5',
                                ),
                                TagGame(
                                  title: 'PS4',
                                ),
                                TagGame(
                                  title: 'Standart',
                                  isActive: false,
                                ),
                              ],
                            ),
                            GameCard(
                              gameName: 'Returnal',
                              gameImageUrl: "assets/returnal.jpg",
                              salePercent: 80.0,
                              tags: [
                                TagGame(
                                  title: 'PS5',
                                ),
                                TagGame(
                                  title: 'PS VITA',
                                ),
                                TagGame(
                                  title: 'Deluxe',
                                  isActive: false,
                                ),
                              ],
                            ),
                            GameCard(
                              gameName: 'Horizon',
                              gameImageUrl: "assets/horizon.jpeg",
                              salePercent: 16.5,
                              tags: [
                                TagGame(
                                  title: 'PS5',
                                ),
                                TagGame(
                                  title: 'PS4',
                                ),
                                TagGame(
                                  title: 'Sliver',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // right
              Container(
                width: kWidthSideMenu,
                height: double.infinity,
                padding: const EdgeInsets.all(kDefaultFatPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Top Developers',
                          style: TextStyle(color: Colors.white, fontSize: 24.0),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'See all',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    // Ranked
                    ...developers.map(
                      (e) => DeveloperRank(
                        index: e.ranked,
                        name: e.name,
                        games: e.gameNumbers,
                        logoUrl: e.logoURL,
                        hasFollowed: e.hasFollowed,
                        logoColor: e.logoColor,
                      ),
                    ),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                        vertical: kDefaultPadding,
                      ),
                      decoration: BoxDecoration(
                        color: primaryDarkColor,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Flexible(
                            flex: 3,
                            child: Text(
                              'Sign up and get a discount from developer',
                              textAlign: TextAlign.end,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Text(
                              '%',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    const Text(
                      'Your Balance',
                      style: TextStyle(color: Colors.white, fontSize: 24.0),
                    ),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          swapIcon,
                          width: 16.0,
                          height: 16.0,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: kDefaultPadding,
                        ),
                        Text(
                          'Transfer to your friends',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: kDefaultFatPadding,
                    ),
                    Row(
                      children: [
                        Text(
                          '\$520',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: kDefaultExThinPadding,
                              horizontal: kDefaultPadding,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue.shade700,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Text(
                              'Transfer',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    const CustomDivider(),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

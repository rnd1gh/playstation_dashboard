import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:playstation_dashboard/config/constants.dart';
import 'package:playstation_dashboard/widgets/small_text_custom.dart';

import 'custom_divider.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kHeigtAppbar,
      child: Row(
        children: [
          // left header
          Container(
            width: kWidthSideMenu,
            padding: const EdgeInsets.only(
              top: kDefaultFatPadding,
              left: kDefaultFatPadding,
              right: kDefaultFatPadding * 2,
            ),
            child: Column(
              children: [
                Image.asset(playstationLogo),
                const Spacer(),
                const CustomDivider(),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: kDefaultFatPadding),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        searchIcon,
                        width: 32.0,
                        height: 32.0,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      const SizedBox(
                        width: kDefaultPadding,
                      ),
                      Expanded(
                        child: TextField(
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Tap to search',
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const CustomDivider(),
                ],
              ),
            ),
          ),
          // right header
          Container(
            width: kWidthSideMenu,
            padding: const EdgeInsets.only(
              top: kDefaultFatPadding,
              left: kDefaultFatPadding,
              right: kDefaultFatPadding * 2,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: Image.asset("assets/avatar/avatar.png"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'RnD1 Youtuber',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0),
                            ),
                            SizedBox(
                              width: kDefaultPadding,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                            ),
                          ],
                        ),
                        const SmallTextCustom(
                          title: '288 level',
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

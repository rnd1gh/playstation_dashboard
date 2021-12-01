import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeveloperModel {
  final String logoURL;
  final String name;
  final int gameNumbers;
  final bool hasFollowed;
  final int ranked;
  final Color logoColor;
  DeveloperModel({
    required this.logoURL,
    required this.name,
    required this.gameNumbers,
    required this.hasFollowed,
    required this.ranked,
    required this.logoColor,
  });
}

List<DeveloperModel> developers = [
  DeveloperModel(
    name: 'Ubisoft',
    logoURL: 'assets/logo/ubisoft.png',
    gameNumbers: 26,
    hasFollowed: true,
    ranked: 1,
    logoColor: Colors.blue,
  ),
  DeveloperModel(
    name: 'Epic Games',
    logoURL: 'assets/logo/epic.png',
    gameNumbers: 3,
    hasFollowed: false,
    ranked: 2,
    logoColor: Colors.redAccent,
  ),
  DeveloperModel(
    name: 'Gameloft',
    logoURL: 'assets/logo/gameloft.png',
    gameNumbers: 26,
    hasFollowed: false,
    ranked: 3,
    logoColor: Colors.greenAccent,
  ),
  DeveloperModel(
    name: 'Rockstart Games',
    logoURL: 'assets/logo/rockstar.png',
    gameNumbers: 13,
    hasFollowed: false,
    ranked: 4,
    logoColor: Colors.purpleAccent,
  ),
  DeveloperModel(
    name: 'Electonic Arts',
    logoURL: 'assets/logo/ea.png',
    gameNumbers: 16,
    hasFollowed: false,
    ranked: 5,
    logoColor: Colors.orangeAccent,
  ),
];

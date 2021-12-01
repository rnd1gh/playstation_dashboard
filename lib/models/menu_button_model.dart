import 'package:playstation_dashboard/config/constants.dart';

class MenuButtonModel {
  final String title;
  final String iconUrl;
  final int index;

  MenuButtonModel(
      {required this.index, required this.title, required this.iconUrl});
}

List<MenuButtonModel> menuButtons = [
  MenuButtonModel(
    title: 'Game Shop',
    iconUrl: storeIcon,
    index: 0,
  ),
  MenuButtonModel(
    title: 'Purechase',
    iconUrl: usdIcon,
    index: 1,
  ),
  MenuButtonModel(
    title: 'Library',
    iconUrl: libraryIcon,
    index: 2,
  ),
  MenuButtonModel(
    title: 'Accessories',
    iconUrl: gameControllerIcon,
    index: 3,
  ),
  MenuButtonModel(
    title: 'Achievments',
    iconUrl: flashIcon,
    index: 4,
  ),
  MenuButtonModel(
    title: 'Social',
    iconUrl: personIcon,
    index: 5,
  ),
  MenuButtonModel(
    title: 'Friends',
    iconUrl: peopleIcon,
    index: 6,
  ),
  MenuButtonModel(
    title: 'Settings',
    iconUrl: settingsIcon,
    index: 7,
  ),
];

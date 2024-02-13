import 'package:fl_components/models/menu_option.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    MenuOption(route: 'animations', icon: Icons.animation, name: 'Animations Screen', widget: const AnimatedScreen()),
    MenuOption(route: 'listview1', icon: Icons.list, name: 'Listview 1', widget: const Listview1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list, name: 'Listview 2', widget: const Listview2Screen()),
    MenuOption(route: 'alert', icon: Icons.notifications, name: 'Alert Screen', widget: const AlertScreen()),
    MenuOption(route: 'card', icon: Icons.credit_card, name: 'Card Screen', widget: const CardScreen()),
    MenuOption(route: 'avatar', icon: Icons.supervised_user_circle, name: 'Avatar Screen', widget: const AvatarScreen()),
    MenuOption(route: 'slider', icon: Icons.slideshow_rounded, name: 'Slider Screen', widget: const SliderScreen()),
    MenuOption(route: 'inputs', icon: Icons.input, name: 'Inputs Screen', widget: const InputsScreen()),
    MenuOption(route: 'listviewbuilder', icon: Icons.list_sharp, name: 'ListView Builder', widget: const ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.widget});
    }

    return appRoutes;
  }

  // static Map <String, Widget Function(BuildContext)> routes = {
  //   'home'     :(BuildContext context) => const HomeScreen(),
  //   'listview1':(BuildContext context) => const Listview1Screen(),
  //   'listview2':(BuildContext context) => const Listview2Screen(),
  //   'alert'    :(BuildContext context) => const AlertScreen(),
  //   'card'     :(BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenericRoute(RouteSettings settings) => MaterialPageRoute(
    builder: (BuildContext context) => const HomeScreen()
  );
}
import 'package:flutter/cupertino.dart';

class DrawerItemModel {
  final String title;
  final IconData iconData;
  final String route;

  DrawerItemModel({
    required this.title,
    required this.iconData,
    required this.route,
  });
}

class DrawerItemData {
  final drawer = <DrawerItemModel>[
    DrawerItemModel(
      title: 'Overview',
      iconData: CupertinoIcons.square_grid_2x2_fill,
      route: '/',
    ),
    DrawerItemModel(
      title: 'Farmer Management',
      iconData: CupertinoIcons.person_2_square_stack_fill,
      route: '/farmer-management' ,
    ),
    DrawerItemModel(
      title: 'Water Management',
      iconData: CupertinoIcons.drop_fill,
      route: '/water-management',
    ),
    DrawerItemModel(
      title: 'Crop Management',
      iconData: CupertinoIcons.tree,
      route: '/crop-management',
    ),
    DrawerItemModel(
      title: 'Soil Management',
      iconData: CupertinoIcons.square_grid_4x3_fill,
      route: '/soil-management',
    ),
    DrawerItemModel(
      title: 'Market Access',
      iconData: CupertinoIcons.cart_fill,
      route: '/market-access',
    ),
    DrawerItemModel(
      title: 'Training & Extension',
      iconData: CupertinoIcons.briefcase_fill,
      route: '/training-extension',
    ),
    DrawerItemModel(
      title: 'Monitoring & Evaluation',
      iconData: CupertinoIcons.chart_bar_alt_fill,
      route: '/monitoring-evaluation',
    ),
    DrawerItemModel(
      title: 'Reports',
      iconData: CupertinoIcons.doc_text_fill,
      route: '/reports',
    ),
  ];
}

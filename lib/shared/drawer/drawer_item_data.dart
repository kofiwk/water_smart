import 'package:flutter/cupertino.dart';
import 'package:water_smart/models/drawer_item_model.dart';

class DrawerItemData {
  final drawer = <DrawerItemModel>[
    DrawerItemModel(
      title: 'Overview',
      iconData: CupertinoIcons.square_grid_2x2_fill,
    ),
    DrawerItemModel(
      title: 'Farmer Management',
      iconData: CupertinoIcons.person_2_square_stack_fill,
    ),
    DrawerItemModel(
      title: 'Water Management',
      iconData: CupertinoIcons.drop_fill,
    ),
    DrawerItemModel(
      title: 'Crop Management',
      iconData: CupertinoIcons.tree,
    ),
    DrawerItemModel(
      title: 'Soil Management',
      iconData: CupertinoIcons.square_grid_4x3_fill,
    ),
    DrawerItemModel(
      title: 'Market Access',
      iconData: CupertinoIcons.cart_fill,
    ),
    DrawerItemModel(
      title: 'Training & Extension',
      iconData: CupertinoIcons.briefcase_fill,
    ),
    DrawerItemModel(
      title: 'Monitoring & Evaluation',
      iconData: CupertinoIcons.chart_bar_alt_fill,
    ),
    DrawerItemModel(
      title: 'Reports',
      iconData: CupertinoIcons.doc_text_fill,
    ),
  ];
}

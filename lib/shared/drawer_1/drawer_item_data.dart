import 'package:flutter/cupertino.dart';
import 'package:water_smart/dashboard.dart';
import 'package:water_smart/models/drawer_item_model.dart';
import 'package:water_smart/modules/crop_management/crop_management.dart';
import 'package:water_smart/modules/farmer_management/farmer_management.dart';
import 'package:water_smart/modules/market_access/market_access.dart';
import 'package:water_smart/modules/monitoring_evaluation/monitoring_evaluation.dart';
import 'package:water_smart/modules/reports/reports.dart';
import 'package:water_smart/modules/soil_management/soil_management.dart';
import 'package:water_smart/modules/training_extension/training_extension.dart';
import 'package:water_smart/modules/water_management/water_management.dart';

class DrawerItemData {
  final drawer = <DrawerItemModel>[
    DrawerItemModel(
      title: 'Overview',
      iconData: CupertinoIcons.square_grid_2x2_fill,
      page: const Dashboard(),
    ),
    DrawerItemModel(
      title: 'Farmer Management',
      iconData: CupertinoIcons.person_2_square_stack_fill,
      page: const FarmerManagement(),
    ),
    DrawerItemModel(
      title: 'Water Management',
      iconData: CupertinoIcons.drop_fill,
      page: const WaterManagement(),
    ),
    DrawerItemModel(
      title: 'Crop Management',
      iconData: CupertinoIcons.tree,
      page: const CropManagement(),
    ),
    DrawerItemModel(
      title: 'Soil Management',
      iconData: CupertinoIcons.square_grid_4x3_fill,
      page: const SoilManagement(),
    ),
    DrawerItemModel(
      title: 'Market Access',
      iconData: CupertinoIcons.cart_fill,
      page: const MarketAccess(),
    ),
    DrawerItemModel(
      title: 'Training & Extension',
      iconData: CupertinoIcons.briefcase_fill,
      page: const TrainingExtension(),
    ),
    DrawerItemModel(
      title: 'Monitoring & Evaluation',
      iconData: CupertinoIcons.chart_bar_alt_fill,
      page: const MonitoringEvaluation(),
    ),
    DrawerItemModel(
      title: 'Reports',
      iconData: CupertinoIcons.doc_text_fill,
      page: const Reports(),
    ),
  ];
}

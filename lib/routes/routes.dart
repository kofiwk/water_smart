import 'package:go_router/go_router.dart';
import 'package:water_smart/dashboard.dart';
import 'package:water_smart/modules/crop_management/crop_management.dart';
import 'package:water_smart/modules/farmer_management/farmer_management.dart';
import 'package:water_smart/modules/market_access/market_access.dart';
import 'package:water_smart/modules/monitoring_evaluation/monitoring_evaluation.dart';
import 'package:water_smart/modules/reports/reports.dart';
import 'package:water_smart/modules/soil_management/soil_management.dart';
import 'package:water_smart/modules/training_extension/training_extension.dart';
import 'package:water_smart/modules/water_management/water_management.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Dashboard(),
    ),
     GoRoute(
      path: '/farmer-management',
      builder: (context, state) => const FarmerManagement(),
    ),
    GoRoute(
      path: '/water-management',
      builder: (context, state) => const WaterManagement(),
    ),
    GoRoute(
      path: '/crop-management',
      builder: (context, state) => const CropManagement(),
    ),
    GoRoute(
      path: '/soil-management',
      builder: (context, state) => const SoilManagement(),
    ),
    GoRoute(
      path: '/market-access',
      builder: (context, state) => const MarketAccess(),
    ),
    GoRoute(
      path: '/training-extension',
      builder: (context, state) => const TrainingExtension(),
    ),
    GoRoute(
      path: '/monitoring-evaluation',
      builder: (context, state) => const MonitoringEvaluation(),
    ),
    GoRoute(
      path: '/reports',
      builder: (context, state) => const Reports(),
    ),
  ]
);

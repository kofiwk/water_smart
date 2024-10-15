import 'package:flutter/material.dart';
import 'package:water_smart/shared/dashboard/dashboard_content.dart';

class DashboardContentWidget extends StatelessWidget {
  const DashboardContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Container(
            width: 600,
            padding: const EdgeInsets.only(left: 20, right: 14),
            child: const DashboardContent(),
          ),
        ],
      ),
    );
  }
}
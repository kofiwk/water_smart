import 'package:flutter/material.dart';
import 'package:water_smart/shared/cards/farmers_card.dart';
import 'package:water_smart/shared/cards/revenue_card.dart';
import 'package:water_smart/shared/cards/water_card.dart';
import 'package:water_smart/shared/dashboard/date_widget.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DateWidget(),
          SizedBox(height: 10),
          SizedBox(
            height: 150,
            child: Row(
              children: [
                FarmersCard(),
                SizedBox(width: 20),
                WaterCard(
                  heading: 'Crops Managed', 
                  deltaChange: 27, 
                  amount: '850'
                ),
                SizedBox(width: 20),
                WaterCard(
                  heading: 'Water Saved', 
                  deltaChange: 40, 
                  amount: '5,000 Litres'
                )
              ],
            ),
          ),
          SizedBox(height: 14),
          Expanded(
            child: Row(
              children: [
                Expanded(child: RevenueCard()),
                SizedBox(width: 14),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: FarmersCard()
                      )
                    ],
                  ),
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}

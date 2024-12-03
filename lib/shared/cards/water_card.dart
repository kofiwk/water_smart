import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:water_smart/shared/growth_indicator.dart';

class WaterCard extends StatelessWidget {
  final String heading;
  final int deltaChange;
  final String amount;
  const WaterCard(
      {required this.heading,
      required this.deltaChange,
      required this.amount,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 208,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey, width: .3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                heading,
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  letterSpacing: -.1,
                ),
              ),
              const SizedBox(width: 3),
              const Icon(
                CupertinoIcons.ellipsis,
                size: 21,
                color: Colors.black,
              ),
            ],
          ),
          Text(
            amount,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 27,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          GrowthIndicator(deltaChange: deltaChange),
        ],
      ),
    );
  }
}

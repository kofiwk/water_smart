import 'package:flutter/material.dart';

class GrowthIndicator extends StatelessWidget {
  const GrowthIndicator({
    super.key,
    required this.deltaChange,
  });

  final int deltaChange;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (deltaChange != 0)
          Icon(deltaChange < 0 ? Icons.trending_down : Icons.trending_up,
              size: 16,
              color: deltaChange <= 0
                  ? const Color.fromRGBO(255, 85, 84, 1)
                  : const Color.fromRGBO(173, 222, 52, 1)),
        if (deltaChange != 0) const SizedBox(width: 6),
        RichText(
          text: TextSpan(
            text: '${deltaChange <= 0 ? '' : '+'}$deltaChange%',
            style: TextStyle(
              fontFamily: 'Montserrat',
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color: deltaChange <= 0
                    ? const Color.fromRGBO(255, 85, 84, 1)
                    : const Color.fromRGBO(173, 222, 52, 1)),
            children: [
              TextSpan(
                text: ' from last month',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.black.withOpacity(.96),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

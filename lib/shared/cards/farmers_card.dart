import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FarmersCard extends StatelessWidget {
  const FarmersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 208,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(2, 34, 19, 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 11,
                width: 11,
                padding: const EdgeInsets.all(3.4),
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 85, 84, 1),
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
              ),
              const SizedBox(width: 6),
              Text(
                'Update',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w300,
                  color: Colors.white.withOpacity(.86),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jan 13th 2024',
                style: TextStyle(
                  fontSize: 10,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w300,
                  color: Colors.white.withOpacity(.46),
                ),
              ),
              const SizedBox(height: 3),
              RichText(
                text: TextSpan(
                  text: 'Sales revenue increased ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white.withOpacity(.86),
                  ),
                  children: const [
                    TextSpan(
                      text: '40%',
                      style: TextStyle(
                        color: Color.fromRGBO(173, 222, 52, 1),
                      ),
                    ),
                    TextSpan(text: ' in 1 week'),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'See Statistics',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  color: Colors.white.withOpacity(.56),
                ),
              ),
              const SizedBox(width: 3),
              Icon(
                CupertinoIcons.chevron_right,
                size: 9,
                color: Colors.white.withOpacity(.56),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
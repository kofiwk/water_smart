import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: const EdgeInsets.only(left: 15, right: 10, top: 20, bottom: 20),
      decoration: const BoxDecoration(),
      child: Row(
        children: [
          const SizedBox(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Dashboard',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    letterSpacing: -.5,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            width: 250,
            margin: const EdgeInsets.symmetric(vertical: 1.3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              border: Border.all(color: Colors.grey, width: .4),
            ),
            child: TextField(
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(.65),
              ),
              decoration: InputDecoration(
                hintText: 'Search anything...',
                hintStyle: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.withOpacity(.75),
                ),
                border: InputBorder.none,
                suffixIcon: Icon(
                  CupertinoIcons.search,
                  size: 15,
                  color: Colors.black.withOpacity(.65),
                ),
                contentPadding: const EdgeInsets.only(left: 10, top: 3),
              ),
              cursorHeight: 13,
              cursorColor: Colors.black.withOpacity(.55),
            ),
          ),
        ],
      ),
    );
  }
}

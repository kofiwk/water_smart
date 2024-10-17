import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const PrimaryButton({super.key, required this.onTap, required this.text
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        margin: const EdgeInsets.symmetric(horizontal: 25),
        color:  const Color.fromRGBO(2, 34, 19, 1),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w100,
              fontSize: 16
            ),
          ),
        ),
      ),
    );
  }
}

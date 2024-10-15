import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isSelected;

  const DrawerTile({
    super.key,
    required this.text,
    required this.icon,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final Color greenColor = isSelected
        ? const Color.fromRGBO(173, 222, 52, 1)
        : Colors.white.withOpacity(.45);
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 30,
                child: Stack(
                  children: [
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.bounceIn,
                      top: 5,
                      right: isSelected ? 24.5 : 35,
                      child: Container(
                        height: 30,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(173, 222, 52, 1),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5)
                          )
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Icon(
                icon,
                size: 20,
                color: greenColor,
              ),
              const SizedBox(width: 8),
              Text(
                text,
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -.1,
                  color: isSelected
                    ? Colors.white.withOpacity(.9)
                    : Colors.white.withOpacity(.55),
                ),
              ),
              const SizedBox(width: 8),
              /*  if (notificationCount != 0)
                Container(
                  height: 16,
                  width: 24,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(173, 222, 52, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '$notificationCount',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -.1,
                      color: Colors.black.withOpacity(.9),
                    ),
                  ),
                ), */
            ],
          )
        ],
      ),
    );
  }
}

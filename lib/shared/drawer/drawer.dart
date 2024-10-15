import 'package:flutter/material.dart';
import 'package:water_smart/shared/drawer/drawer_item_data.dart';
import 'package:water_smart/shared/drawer/drawer_tile.dart';

class DrawerWidget extends StatefulWidget {
  final void Function()? onTap;
  const DrawerWidget({super.key, required this.onTap});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = DrawerItemData().drawer;  // Access drawer list properly
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;  // Use the index correctly
              });
              if (widget.onTap != null) {
                widget.onTap!();  // Call onTap callback if provided
              }
            },
            child: DrawerTile(
              text: data[index].title,  // Use the data list from DrawerItemData
              icon: data[index].iconData,
              isSelected: index == _selectedIndex,  // Use index to check selection
            ),
          );
        },
      ),
    );
  }
}

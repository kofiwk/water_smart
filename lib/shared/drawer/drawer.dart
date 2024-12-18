import 'package:flutter/material.dart';
import 'package:water_smart/shared/drawer/drawer_item_data.dart';
import 'package:water_smart/shared/drawer/drawer_tile.dart';
import 'package:go_router/go_router.dart';

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
    final data = DrawerItemData().drawer;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (_selectedIndex != index) {
                  setState(() {
                  _selectedIndex = index;
                });
              }
              if (widget.onTap != null) {
                widget.onTap!();
              }
              Future.microtask(()=> context.go(data[index].route)); // Navigate with go_router
            },
            child: DrawerTile(
              text: data[index].title,
              icon: data[index].iconData,
              isSelected: index == _selectedIndex,
            ),
          );
        },
      ),
    );
  }
}

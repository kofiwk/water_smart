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
  @override
  Widget build(BuildContext context) {
    final data = DrawerItemData().drawer;

     bool isSelected(DrawerItemModel item) {
      final isSelected = GoRouter.of(context)
              .routerDelegate
              .currentConfiguration
              .uri
              .toString() ==
          item.route;

      return isSelected;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final item = data[index];
          return GestureDetector(
            onTap: () {
              if (widget.onTap != null) {
                widget.onTap!();
              }
              Future.microtask(()=> context.go(item.route)); // Navigate with go_router
            },
            child: DrawerTile(
              text: data[index].title,
              icon: data[index].iconData,
              isSelected:isSelected(item),
            ),
          );
        },
      ),
    );
  }
}
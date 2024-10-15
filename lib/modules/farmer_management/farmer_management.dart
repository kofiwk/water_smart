import 'package:flutter/material.dart';

class FarmerManagement extends StatefulWidget {
  const FarmerManagement({super.key});

  @override
  State<FarmerManagement> createState() => _FarmerManagementState();
}

class _FarmerManagementState extends State<FarmerManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
         /*  DRAWER(onTap: () {},), */
          Expanded(
            child: Column(
              children: [
                AppBar(
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.grey,
                  title: const Row(
                    children: [
                      Text(
                        'Farmer Management',
                        style: TextStyle(
                          color: Color(0xFFF1F1F1),
                          fontSize: 20,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          )
        ],
      ),
    );
  }
}
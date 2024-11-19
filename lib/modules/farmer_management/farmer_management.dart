import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:water_smart/shared/appbar/appbar_widget.dart';
import 'package:water_smart/shared/dashboard/dashboard_content.dart';
/* import 'package:water_smart/shared/cards/kpi_cards.dart'; */
import 'package:water_smart/shared/drawer/drawer.dart';

class FarmerManagement extends StatefulWidget {
  const FarmerManagement({super.key});

  @override
  State<FarmerManagement> createState() => _DashboardState();
}

class _DashboardState extends State<FarmerManagement> {
  bool isSearching = false;
  final TextEditingController searchController = TextEditingController();

  /* final List<KPI> kpiList = [
    KPI("Total Farmers Registered", "1200", Icons.account_circle_rounded),
    KPI("Water Saved This Month", "50,000 Litres", Icons.water_drop_rounded),
    KPI("Total Crops Managed", "850", Icons.grass_rounded),
    /* KPI("Ongoing Crop Health Issues", "12", Icons.abc),
    KPI("Revenue Generated", "\$150,000", Icons.money_rounded),
    KPI("Weather Alerts", "3 Active", Icons.warning_rounded), */
  ]; */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Container(
                  color: const Color.fromRGBO(2, 34, 19, 1),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: double.infinity,
                         padding: const EdgeInsets.only(left: 30, top: 20),
                         child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.drop_fill,
                              color: Color.fromRGBO(173, 222, 52, 1)
                            ),
                            SizedBox(width: 5),
                            Text(
                              'WaterSmart Ghana',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -.5,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        height: 1,
                        width: double.infinity,
                        margin: const EdgeInsets.only(left: 30, right: 30, top: 22),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.12),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      
                      const SizedBox(height: 10),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only( right: 10.0),
                          child: DrawerWidget(
                            onTap: () {
                              setState(() {
                                
                              });
                            }
                          ),
                        )
                      )
                    ],
                  ),
                ),
              ]
              )
            ),
            Expanded(
              flex: 7,
              child: Column(
                children: [
                  const AppbarWidget(),
                   Container(
                    height: 1.2,
                    width: double.infinity,
                    color: Colors.grey.withOpacity(.3),
                  ),
                  const Expanded(child: DashboardContent())
                ],
              ),
              
            ),
            /* Expanded(
              flex: 2,
              child: Container(
                color: Colors.blueAccent,
              )
            ) */
            
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:water_smart/api_service.dart';
import 'package:water_smart/models/farmers_model.dart';
import 'package:water_smart/modules/farmer_management/widgets/appbar.dart';
import 'package:water_smart/shared/drawer/drawer.dart';

class FarmerManagement extends StatefulWidget {
  const FarmerManagement({super.key});

  @override
  State<FarmerManagement> createState() => _FarmerManagementState();
}

class _FarmerManagementState extends State<FarmerManagement> {
  late Future<List<Farmer>> futureFarmers;
  bool isSearching = false;
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    futureFarmers = ApiService().fetchFarmers(); // Fetch farmers
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Row(
          children: [
            // Sidebar with Drawer
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
                              Icon(CupertinoIcons.drop_fill,
                                  color: Color.fromRGBO(173, 222, 52, 1)),
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
                          margin:
                              const EdgeInsets.only(left: 30, right: 30, top: 22),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.12),
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: DrawerWidget(onTap: () {
                              setState(() {});
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Main Content Area
            Expanded(
              flex: 7,
              child: Column(
                children: [
                  // AppBar
                  const FarmerAppBar(),
                  Container(
                    height: 1.2,
                    width: double.infinity,
                    color: Colors.grey.withOpacity(.3),
                  ),

                  // Farmer List Section
                  Expanded(
                    child: FutureBuilder<List<Farmer>>(
                      future: futureFarmers, // Fetch farmers
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return const Center(
                              child: CircularProgressIndicator()); // Loading state
                        } else if (snapshot.hasError) {
                          return Center(
                              child: Text('Error: ${snapshot.error}')); // Error state
                        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                          return const Center(
                              child: Text('No farmers found.')); // No data state
                        } else {
                          return ListView.builder(
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              final farmer = snapshot.data![index];
                              return Card(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 4,
                                child: ListTile(
                                  title: Text(
                                    farmer.name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    'Location: ${farmer.location}',
                                  ),
                                  trailing: Text(farmer.contact),
                                ),
                              );
                            },
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

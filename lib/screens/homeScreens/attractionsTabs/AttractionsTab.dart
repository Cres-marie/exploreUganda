import 'package:explore_uganda/components/constants/constants.dart';
import 'package:explore_uganda/components/customComponents/CustomAppRow.dart';
import 'package:explore_uganda/screens/homeScreens/attractionsTabs/Galleries.dart';
import 'package:explore_uganda/screens/homeScreens/attractionsTabs/Gardens.dart';
import 'package:explore_uganda/screens/homeScreens/attractionsTabs/NationalParks.dart';
import 'package:explore_uganda/screens/homeScreens/attractionsTabs/NationalReserves.dart';
import 'package:explore_uganda/screens/homeScreens/attractionsTabs/Waterbodies.dart';
import 'package:explore_uganda/screens/homeScreens/attractionsTabs/museums.dart';
import 'package:explore_uganda/screens/homeScreens/homeTabs/Accomodation.dart';
import 'package:explore_uganda/screens/homeScreens/homeTabs/All.dart';
import 'package:explore_uganda/screens/homeScreens/homeTabs/Attractions.dart';
import 'package:explore_uganda/screens/homeScreens/homeTabs/Investments.dart';
import 'package:flutter/material.dart';

class AttractionsTab extends StatefulWidget {
  const AttractionsTab({super.key});

  @override
  State<AttractionsTab> createState() => _AttractionsTabState();
}

class _AttractionsTabState extends State<AttractionsTab> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: bpadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new_outlined)),
                CustomAppRow()
              ]),
              SizedBox(height: 10,),

              Text(
                  'Attractions in Uganda',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              SizedBox(height: 10,),
              TabBar(
                controller: _tabController,
                indicatorColor: appcolor,
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                unselectedLabelColor: Colors.black87,
                labelColor: appcolor,
                tabs: [
                  Tab(text: 'Museums'),
                  Tab(text: 'Galleries'),
                  Tab(text: 'National Parks'),
                  Tab(text: 'National Reserves'),
                  Tab(text: 'Water Bodies'),
                  Tab(text: 'Gardens'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    Museums(),
                    Galleries(),
                    NationalParks(),
                    NationalReserves(),
                    Waterbodies(),
                    Gardens()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

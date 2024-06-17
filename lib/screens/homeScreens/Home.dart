import 'package:explore_uganda/components/constants/constants.dart';
import 'package:explore_uganda/components/customComponents/CustomAppRow.dart';
import 'package:explore_uganda/screens/homeScreens/homeTabs/Accomodation.dart';
import 'package:explore_uganda/screens/homeScreens/homeTabs/All.dart';
import 'package:explore_uganda/screens/homeScreens/homeTabs/Attractions.dart';
import 'package:explore_uganda/screens/homeScreens/homeTabs/Events.dart';
import 'package:explore_uganda/screens/homeScreens/homeTabs/Investments.dart';
import 'package:explore_uganda/screens/homeScreens/homeTabs/MarketPlace.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
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
                  Text('Find your destination', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                  CustomAppRow()
                ]),
              
              
              TabBar(
                  controller: _tabController,
                  indicatorColor: appcolor,
                  
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  unselectedLabelColor: Colors.black87,
                  labelColor: appcolor,
                  tabs: [
                   
                    Tab(text: 'All'),
                    Tab(text: 'Attractions'),
                    Tab(text: 'Accommodation'),
                    Tab(text: 'Events'),
                    Tab(text: 'Market Place'),
                    Tab(text: 'Investments'),
                  ],
                ),
              
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    All(),
                    Attractions(),
                    Accomodation(),
                    Events(),
                    MarketPlace(),
                    Investments(),
                   
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

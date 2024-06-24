import 'package:explore_uganda/components/constants/constants.dart';
import 'package:explore_uganda/components/customComponents/CustomAppRow.dart';
import 'package:explore_uganda/screens/exploreScreens/exploreTabs/Air&CarTravel.dart';
import 'package:explore_uganda/screens/exploreScreens/exploreTabs/Banks.dart';
import 'package:explore_uganda/screens/exploreScreens/exploreTabs/Hospitals.dart';
import 'package:explore_uganda/screens/exploreScreens/exploreTabs/Nightlife.dart';
import 'package:explore_uganda/screens/exploreScreens/exploreTabs/PoliceStations.dart';
import 'package:explore_uganda/screens/exploreScreens/exploreTabs/Supermarkets.dart';
import 'package:explore_uganda/screens/exploreScreens/exploreTabs/TopAttractions.dart';
import 'package:explore_uganda/screens/exploreScreens/exploreTabs/Accomodation.dart';
import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> with SingleTickerProviderStateMixin {

  late TabController _tabController;

   @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
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
                
                  Row(
                    children: [
                      
                      Image.asset('assets/logo.png')
                      
                    ],
                  ),

                  CustomAppRow()
                ]),

                SizedBox(height: 15,),

                Text('Explore', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
              
              SizedBox(height: 15,),

              TabBar(
                  controller: _tabController,
                  indicatorColor: appcolor,
                  
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  unselectedLabelColor: Colors.black87,
                  labelColor: appcolor,
                  tabs: [
                   
                    Tab(text: 'Top Attractions'),
                    Tab(text: 'Accomodation'),
                    Tab(text: 'Air & Car Travel'),
                    Tab(text: 'Hospitals'),
                    Tab(text: 'Banks'),
                    Tab(text: 'Police Stations'),
                    Tab(text: 'Supermarket'),
                    Tab(text: 'Nightlife'),
                  
              
                  ],
                ),
              
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children:  [
                   
                   TopAttractions(),
                   Accomodation(),
                   AirCarTravel(),
                   Hospitals(),
                   Banks(),
                   PoliceStations(),
                   Supermarkets(),
                   NightLife()
                   
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
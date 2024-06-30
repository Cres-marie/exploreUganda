import 'package:explore_uganda/components/constants/constants.dart';
import 'package:explore_uganda/components/customComponents/CustomAppRow.dart';
import 'package:explore_uganda/screens/marketScreens/marketTabs/AllMarket.dart';
import 'package:explore_uganda/screens/marketScreens/marketTabs/Fleet.dart';
import 'package:explore_uganda/screens/marketScreens/marketTabs/Horeca.dart';
import 'package:explore_uganda/screens/marketScreens/marketTabs/TourGuide.dart';
import 'package:flutter/material.dart';

class Market extends StatefulWidget {
  const Market({super.key});

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market>  with SingleTickerProviderStateMixin {
  late TabController _tabController;

   @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
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

                Text('Market Place', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
              
              SizedBox(height: 15,),

              TabBar(
                  controller: _tabController,
                  indicatorColor: appcolor,
                  
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  unselectedLabelColor: Colors.black87,
                  labelColor: appcolor,
                  tabs: [
                   
                    Tab(text: 'All'),
                    Tab(text: 'Tour Guides & Operators'),
                    Tab(text: 'HORECA'),
                    Tab(text: 'Fleet Services'),
                  
              
                  ],
                ),
              
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    AllMarket(),
                    TourGuide(),
                    Horeca(),
                    Fleet(),
                    
                  
                   
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
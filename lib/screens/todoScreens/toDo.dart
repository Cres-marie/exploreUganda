import 'package:explore_uganda/components/constants/constants.dart';
import 'package:explore_uganda/components/customComponents/CustomAppRow.dart';
import 'package:explore_uganda/screens/todoScreens/Agriculture.dart';
import 'package:explore_uganda/screens/todoScreens/Art.dart';
import 'package:explore_uganda/screens/todoScreens/MICE.dart';
import 'package:explore_uganda/screens/todoScreens/Music.dart';
import 'package:explore_uganda/screens/todoScreens/Technology.dart';
import 'package:flutter/material.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}


class _ToDoState extends State<ToDo> with SingleTickerProviderStateMixin{
   late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
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

                Text('Events in Uganda', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
              
              SizedBox(height: 15,),

              TabBar(
                  controller: _tabController,
                  indicatorColor: appcolor,
                  
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  unselectedLabelColor: Colors.black87,
                  labelColor: appcolor,
                  tabs: [
                   
                    Tab(text: 'Music'),
                    Tab(text: 'Art'),
                    Tab(text: 'MICE'),
                    Tab(text: 'Agriculture'),
                    Tab(text: 'Technology'),
              
                  ],
                ),
              
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    Music(),
                    Art(),
                    MICE(),
                    Agriculture(),
                    Technology(),
                  
                   
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
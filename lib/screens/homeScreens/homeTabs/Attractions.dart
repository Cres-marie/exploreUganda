import 'package:explore_uganda/components/constants/constants.dart';
import 'package:explore_uganda/screens/homeScreens/attractionsTabs/AttractionsTab.dart';
import 'package:flutter/material.dart';

class Attractions extends StatefulWidget {
  const Attractions({super.key});

  @override
  State<Attractions> createState() => _AttractionsState();
}

class _AttractionsState extends State<Attractions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          SizedBox(height: 10,),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                    Text(
                    'WATER BODIES',
                    style: categories,
                  ),
                  // SizedBox(height: 5,),
                  Text(
                    'Murchison Falls',
                    style: subwords,
                  ),
                  Text(
                    'Experience Uganda’s largest waterfall and enjoy nature',
                    style: normalText,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 15,
                      ),
                      Text(
                        'Masindi, Uganda',
                        style: normalText,
                      )
                    ],
                  )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    
                  children: [
                    Text(
                    'WATER BODIES',
                    style: categories,
                  ),
                  // SizedBox(height: 5,),
                  Text(
                    'Murchison Falls',
                    style: subwords,
                  ),
                  Text(
                    'Experience Uganda’s largest waterfall and enjoy nature',
                    style: normalText,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 15,
                      ),
                      Text(
                        'Masindi, Uganda',
                        style: normalText,
                      )
                    ],
                  )
                  ],
                )
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Attraction Sites',
                style: subwords,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'View all',
                    style: TextStyle(fontSize: 12),
                  )),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AttractionsTab()),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/attraction.png'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'WATER BODIES',
                  style: categories,
                ),
                // SizedBox(height: 5,),
                Text(
                  'Murchison Falls',
                  style: subwords,
                ),
                Text(
                  'Experience Uganda’s largest waterfall and enjoy nature',
                  style: normalText,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 15,
                    ),
                    Text(
                      'Masindi, Uganda',
                      style: normalText,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:explore_uganda/components/constants/constants.dart';
import 'package:flutter/material.dart';

class MarketPlace extends StatefulWidget {
  const MarketPlace({super.key});

  @override
  State<MarketPlace> createState() => _MarketPlaceState();
}

class _MarketPlaceState extends State<MarketPlace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Market Place',
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

          Image.asset('assets/market.png'),
          SizedBox(
            height: 10,
          ),
          Text(
            'MARKET PLACE',
            style: categories,
          ),
          // SizedBox(height: 5,),
          Text(
            'Hotels, Events, Tours, Car and Air travel',
            style: subwords,
          ),
          
          
          Row(
            children: [
              Icon(Icons.star, size: 15,),
              Text('4.1', style: normalText,),
              Text('(121 reviews)', style: normalText,)
            ],
          ),
          
        ],
      ),

    );
  }
}
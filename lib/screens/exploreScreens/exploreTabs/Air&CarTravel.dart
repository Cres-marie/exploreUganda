import 'package:explore_uganda/components/constants/constants.dart';
import 'package:flutter/material.dart';

class AirCarTravel extends StatefulWidget {
  const AirCarTravel({super.key});

  @override
  State<AirCarTravel> createState() => _AirCarTravelState();
}

class _AirCarTravelState extends State<AirCarTravel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: bpadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Air & Car Travel')
            ]
          )
        )
      )

    );
  }
}
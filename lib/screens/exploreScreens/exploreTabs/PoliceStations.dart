import 'package:explore_uganda/components/constants/constants.dart';
import 'package:flutter/material.dart';

class PoliceStations extends StatefulWidget {
  const PoliceStations({super.key});

  @override
  State<PoliceStations> createState() => _PoliceStationsState();
}

class _PoliceStationsState extends State<PoliceStations> {
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
              Text('Police Stations')
            ]
          )
        )
      )

    );
  }
}
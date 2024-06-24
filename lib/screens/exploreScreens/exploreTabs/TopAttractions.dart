import 'package:explore_uganda/components/constants/constants.dart';
import 'package:flutter/material.dart';

class TopAttractions extends StatefulWidget {
  const TopAttractions({super.key});

  @override
  State<TopAttractions> createState() => _TopAttractionsState();
}

class _TopAttractionsState extends State<TopAttractions> {
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
              Text('Top Attractions')
            ]
          )
        )
      )

    );
  }
}
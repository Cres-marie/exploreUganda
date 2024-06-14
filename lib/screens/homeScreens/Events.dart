import 'package:explore_uganda/components/constants/constants.dart';
import 'package:flutter/material.dart';

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
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
                'To Do',
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

          Image.asset('assets/event.png'),
          SizedBox(
            height: 10,
          ),
          Text(
            'ART',
            style: categories,
          ),
          // SizedBox(height: 5,),
          Text(
            'Muloma’s Exhibition',
            style: subwords,
          ),
          Text(
            'Enjoy mixed media paintings done by a recognized artist',
            style: normalText,
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Icon(Icons.location_on_outlined, size: 15,),
              
              Text('Masindi, Uganda', style: normalText,)
            ],
          )
        ],
      ),
    );
  }
}
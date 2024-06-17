import 'package:explore_uganda/components/constants/constants.dart';
import 'package:flutter/material.dart';

class Accomodation extends StatefulWidget {
  const Accomodation({super.key});

  @override
  State<Accomodation> createState() => _AccomodationState();
}

class _AccomodationState extends State<Accomodation> {
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
                'Accomodation',
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

          Image.asset('assets/accomodation.png'),
          SizedBox(
            height: 10,
          ),
          Text(
            'VILLA',
            style: categories,
          ),
          // SizedBox(height: 5,),
          Text(
            'Flat in Kampala',
            style: subwords,
          ),
          Text(
            '1 bedroom with a spacious living room',
            style: normalText,
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                    text: "\$23",
                    style: subwords,
                    children: [
                      TextSpan(
                        text: "/night",
                        
                        
                      ),
                    ]),
              )
            ],
          )
        ],
      ),
    );
  }
}

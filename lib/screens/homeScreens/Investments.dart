import 'package:explore_uganda/components/constants/constants.dart';
import 'package:flutter/material.dart';

class Investments extends StatefulWidget {
  const Investments({super.key});

  @override
  State<Investments> createState() => _InvestmentsState();
}

class _InvestmentsState extends State<Investments> {
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
                'Investment Options',
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

          Image.asset('assets/investment.png'),
          SizedBox(
            height: 10,
          ),
          Text(
            'INVESTMENTS',
            style: categories,
          ),
          // SizedBox(height: 5,),
          Text(
            'Several Investment Options in Uganda',
            style: subwords,
          ),
          Text(
            'Diversify your portfolio by investing in different industries',
            style: normalText,
          ),
          
          
        ],
      ),

    );
  }
}
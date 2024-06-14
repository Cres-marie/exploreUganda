import 'package:explore_uganda/components/constants/constants.dart';
import 'package:flutter/material.dart';

class All extends StatefulWidget {
  const All({super.key});

  @override
  State<All> createState() => _AllState();
}

class _AllState extends State<All> {
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
              Text('Attraction Sites', style: subwords,),
              TextButton(
                onPressed: (){}, 
                child: Text('View all', style: TextStyle(fontSize: 12),)
              ),
            ],
          ),
          SizedBox(height: 5,),

          Image.asset('assets/attraction.png'),
          SizedBox(height: 10,),
          Text('WATER BODIES', style: categories,),
          // SizedBox(height: 5,),
          Text('Murchison Falls', style: subwords,),
          Text('Experience Uganda’s largest waterfall and enjoy nature', style: normalText,),
          SizedBox(height: 5,),
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
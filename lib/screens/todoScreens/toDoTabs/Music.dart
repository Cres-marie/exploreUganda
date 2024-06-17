import 'package:explore_uganda/components/constants/constants.dart';
import 'package:flutter/material.dart';

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          
          SizedBox(height: 20,),

          Stack(
            children:[ 
              Image.asset('assets/attraction.png'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    
                    child: Center(
                      child: IconButton(
                        
                        onPressed: (){}, 
                        icon: Icon(Icons.favorite_outlined, color: Colors.white, size: 16,)
                      ),
                    ),
                  ),
                ),
              )
            ]
          ),
          SizedBox(height: 10,),
          // Text('WATER BODIES', style: categories,),
          // SizedBox(height: 5,),
          Text('Mulomas Art Exhibition', style: subwords,),
          SizedBox(height: 5,),
          Row(
            children: [
              Icon(Icons.lock_clock_outlined, size: 15,),
              
              Text('26 June , 9:00AM', style: normalText,)
            ],
          ),
          Row(
            children: [
              Icon(Icons.location_on_outlined, size: 15,),
              
              Text('City Showground', style: normalText,)
            ],
          ),

          Text('Tickets frm USH 40,000 - 60,000', style: normalText,)

        ],
      ),
    );
  }
}
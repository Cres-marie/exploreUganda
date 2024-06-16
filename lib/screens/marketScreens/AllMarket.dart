import 'package:explore_uganda/components/constants/constants.dart';
import 'package:flutter/material.dart';

class AllMarket extends StatefulWidget {
  const AllMarket({super.key});

  @override
  State<AllMarket> createState() => _AllMarketState();
}

class _AllMarketState extends State<AllMarket> {
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
              Text('Top Rated Guides and Operators', style: subwords,),
              TextButton(
                onPressed: (){}, 
                child: Text('View all', style: TextStyle(fontSize: 12),)
              ),
            ],
          ),
          
        

          Stack(
            children:[ 
              Image.asset('assets/attraction.png'),
              Container(
                
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.all(Radius.circular(5)),
                  color: appcolor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text('Top Pick', style: TextStyle(color: Colors.white, fontSize: 12),),
                ),
              ),
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
          Text('Shuttle Tours', style: subwords,),
          SizedBox(height: 5,),
          Row(
            children: [
              Icon(Icons.star, size: 15, color: appcolor,),
              Text('4.1', style: normalText,),
              Text('(121 reviews)', style: normalText,)
            ],
          ),

          

        ],
      ),
    );
  }
}
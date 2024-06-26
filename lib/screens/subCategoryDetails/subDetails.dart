import 'package:explore_uganda/components/constants/constants.dart';
import 'package:explore_uganda/components/customComponents/customButton.dart';
import 'package:flutter/material.dart';

class SubCategoryDetails extends StatefulWidget {
  const SubCategoryDetails({super.key});

  @override
  State<SubCategoryDetails> createState() => _SubCategoryDetailsState();
}

class _SubCategoryDetailsState extends State<SubCategoryDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
              children: [
                Stack(children: [
                  Image.asset(
                    'assets/event.png',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: unselectedTileColor,
                              ),
                              child: Center(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_back_ios_new_outlined,
                                      color: Colors.black,
                                      size: 16,
                                    )),
                              ),
                            ),
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
                                color: unselectedTileColor,
                              ),
                              child: Center(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite_outlined,
                                      color: Colors.white,
                                      size: 16,
                                    )),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ]),
                Padding(
                  padding: bpadding,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bwindi Impenetrable Forest',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                  SizedBox(height: 15,),
                      Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 15,
                        color: appcolor,
                      ),
                      Text(
                        '4.1',
                        style: normalText,
                      ),
                      Text(
                        '(121 reviews)',
                        style: normalText,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 15,
                      ),
                      Text(
                        'Kanungu District, Uganda',
                        style: normalText,
                      )
                    ],
                  ),
                        
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_outlined,
                        size: 15,
                      ),
                      Text(
                        'Thur - Sun: 12:00pm - 6:00pm',
                        style: normalText,
                      )
                    ],
                  ),
                        
                  SizedBox(height: 10,),
                        
                  Divider(),
                        
                  SizedBox(height: 10,),
                        
                  Text('About', style: subtitle,),
                  SizedBox(height: 10,),
                  Text('Dive into the enigmatic world of Muluma\'s latest exhibition.  This collection of abstract pieces compels viewers to engage with a symphony of color, shape, and texture.  Each canvas is an invitation to personal interpretation, sparking unique emotions and narratives within the observer. '),
                  SizedBox(height: 15,),
                  Text('Where you will be', style: subtitle,),

                  Text('About', style: subtitle,),
                  SizedBox(height: 10,),
                  Text('Dive into the enigmatic world of Muluma\'s latest exhibition.  This collection of abstract pieces compels viewers to engage with a symphony of color, shape, and texture.  Each canvas is an invitation to personal interpretation, sparking unique emotions and narratives within the observer. '),
                  SizedBox(height: 15,),
                  Text('Where you will be', style: subtitle,),

                  Text('About', style: subtitle,),
                  SizedBox(height: 10,),
                  Text('Dive into the enigmatic world of Muluma\'s latest exhibition.  This collection of abstract pieces compels viewers to engage with a symphony of color, shape, and texture.  Each canvas is an invitation to personal interpretation, sparking unique emotions and narratives within the observer. '),
                  SizedBox(height: 15,),
                  Text('Where you will be', style: subtitle,),
              
              
                    ],
                  ),
                ),
                
              ],
                        ),
            ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: reusableButton(text: 'Contact', icon: Icons.phone, onPressed: () {}),
          ),
          ]
        ),
      
    );
  }
}

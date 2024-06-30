import 'package:carousel_slider/carousel_slider.dart';
import 'package:explore_uganda/components/constants/constants.dart';
import 'package:explore_uganda/screens/subCategoryDetails/subDetails.dart';
import 'package:flutter/material.dart';

class Museums extends StatefulWidget {
  const Museums({super.key});

  @override
  State<Museums> createState() => _MuseumsState();
}

class _MuseumsState extends State<Museums> {
  final _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SubCategoryDetails()),
                            );
                          },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        child: Stack(children: [
                          PageView(
                            scrollDirection: Axis.horizontal,
                            controller: _pageController,
                            onPageChanged: (value) {
                              setState(() {
                                _currentPage = value;
                              });
                            },
                            children: [
                              Image.asset(
                                'assets/museum.png',
                                fit: BoxFit.cover,
                              ),
                              Image.asset('assets/museum.png', fit: BoxFit.cover),
                              Image.asset('assets/museum.png', fit: BoxFit.cover),
                            ],
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 12,
                                    child: ListView.builder(
                                        itemCount: 3,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            height: 8,
                                            width: 8,
                                            margin: EdgeInsets.only(left: 10),
                                            decoration: BoxDecoration(
                                              color: _currentPage == index
                                                  ? appcolor
                                                  : Colors.white,
                                              shape: BoxShape.circle,
                                            ),
                                          );
                                        }),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Bwindi National Park',
                        style: subwords,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.pedal_bike_outlined,
                                size: 15,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '6 hours',
                                style: normalText,
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.time_to_leave_outlined,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '4 hours',
                                style: normalText,
                              )
                            ],
                          ),
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
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}

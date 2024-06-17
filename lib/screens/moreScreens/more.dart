import 'package:explore_uganda/components/constants/constants.dart';
import 'package:explore_uganda/components/customComponents/CustomAppRow.dart';
import 'package:explore_uganda/components/customComponents/customProfileAvatar.dart';
import 'package:flutter/material.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: bpadding,
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [Image.asset('assets/logo.png')],
                      ),
                      CustomAppRow()
                    ]),
                SizedBox(
                  height: 30,
                ),
                
                ProfileAvatar(),

                SizedBox(
                  height: 10,
                ),
                Text('Josh Wright'),
                Text('josh.wright@email.com'),
                Text('+256 708 567 892'),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0XFFE1E1E1), width: 0.7),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.account_circle_outlined,
                              color: appcolor,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text('Edit Profile')
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.translate_outlined,
                                  color: appcolor,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text('Language')
                              ],
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'English',
                                  style: TextStyle(color: appcolor),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.notifications_active_outlined,
                              color: appcolor,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text('Notification')
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0XFFE1E1E1), width: 0.7),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.fire_truck_outlined,
                              color: appcolor,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text('Deals')
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.favorite_border_outlined,
                                  color: appcolor,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text('Wishlist')
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.sync_alt_outlined,
                              color: appcolor,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text('Currency Converter')
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0XFFE1E1E1), width: 0.7),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star_rate_outlined,
                              color: appcolor,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text('Rating')
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.help_outline_outlined,
                                  color: appcolor,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text('Support')
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.lock_outlined,
                              color: appcolor,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text('Privacy policy')
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.logout_outlined,
                              color: appcolor,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text('Logout')
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

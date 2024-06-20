import 'package:explore_uganda/components/constants/constants.dart';
import 'package:flutter/material.dart';

class FAQ extends StatefulWidget {
  const FAQ({super.key});

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: bpadding,
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Textfieldcolor,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios_new_outlined))
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 50, bottom: 10, left: 20),
                      child: Text(
                        'FAQs',
                        style: subheadings,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: bpadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Search Text Field
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Enter your keyword',
                          hintStyle: normalText,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 20,),

                    
                    Container(
                        height: 100,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                          
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0XFFDFF1FF)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Icon(Icons.notifications_on_outlined, color: Color(0XFF1573FE),),
                                        SizedBox(height: 5,),
                                        Text('Questions about', style: normalText,),
                                        Text('Getting Started', style: subwords,)
                                    ],
                                  ),
                                ),
                              ),
                      
                              SizedBox(width: 15,),
                          
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0XFFE8FFEB)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Icon(Icons.settings_outlined, color: Color(0XFF049C6B),),
                                        SizedBox(height: 5,),
                                        Text('Questions about', style: normalText,),
                                        Text('How to Invest', style: subwords,)
                                    ],
                                  ),
                                ),
                              ),
                          
                              SizedBox(width: 15,),
                      
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0XFFFFECEF)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Icon(Icons.local_atm_outlined, color: Color(0XFFDF1525),),
                                        SizedBox(height: 5,),
                                        Text('Questions about', style: normalText,),
                                        Text('Payment Method', style: subwords,)
                                    ],
                                  ),
                                ),
                              ),
                          
                              
                            ],
                          ),
                        ),
                      ),
                    
                    SizedBox(height: 20,),

                    Text('Top Questions', style: subtitle,),
                  
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

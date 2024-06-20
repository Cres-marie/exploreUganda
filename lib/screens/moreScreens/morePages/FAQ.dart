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
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30))
                ),
              
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
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
                      padding: const EdgeInsets.only(top: 50, bottom: 10, left: 20),
                      child: Text('FAQs', style: subheadings,),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: bpadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    

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
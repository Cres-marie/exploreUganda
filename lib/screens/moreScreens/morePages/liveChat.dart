import 'package:explore_uganda/components/constants/constants.dart';
import 'package:flutter/material.dart';

class LiveChat extends StatefulWidget {
  const LiveChat({super.key});

  @override
  State<LiveChat> createState() => _LiveChatState();
}

class _LiveChatState extends State<LiveChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  padding: const EdgeInsets.only(top: 50, bottom: 10, left: 20),
                  child: Text(
                    'Live Chat',
                    style: subheadings,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [],
            ),
          )
        ]),
        Column(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0XFFF5F5F5),
                          hintText: 'Type to reply',
                          hintStyle: hintext,
                          suffixIcon: IconButton(
                            onPressed: (){}, 
                            icon: Icon(Icons.emoji_emotions_outlined)
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0.2, horizontal: 20.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    )));
  }
}

import 'package:explore_uganda/components/constants/constants.dart';
import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              child: Text('Language', style: subheadings,),
            ),
          ],
        ),
      ),
    );
  }
}
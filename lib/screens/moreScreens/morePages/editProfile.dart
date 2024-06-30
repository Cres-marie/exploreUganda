import 'package:explore_uganda/components/constants/constants.dart';
import 'package:explore_uganda/components/customComponents/customButton.dart';
import 'package:explore_uganda/components/customComponents/customProfileAvatar.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: bpadding,
        child: SingleChildScrollView(
          child: Column(
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
              SizedBox(
                height: 20,
              ),
              ProfileAvatar(),
              SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(text: 'Welcome, ', style: subwords, children: [
                  TextSpan(
                    text: "Josh",
                  ),
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
          
              Form(
                child: Column(
                  children: [
          
                    TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          hintStyle: hintext,
                          filled: true,
                          fillColor: Textfieldcolor, // Set the background color to yellow
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none, // No border
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                        
                          hintText: 'Email Address',
                          hintStyle: hintext,
                          filled: true,
                          fillColor: Textfieldcolor, // Set the background color to yellow
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none, // No border
                          ),
                          
                        ),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Phone Number',
                          hintStyle: hintext,
                          filled: true,
                          fillColor: Textfieldcolor, // Set the background color to yellow
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none, // No border
                          ),
                        ),
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.next,
                      ),
          
                      SizedBox(height: 30,),
          
                      reusableButton(
                        text: 'Save', 
                        onPressed: (){}
                      )
          
                  ],
                )
              
              )
            ],
          ),
        ),
      )),
    );
  }
}

import 'package:explore_uganda/components/constants/constants.dart';
import 'package:flutter/material.dart';

class TermsOfUse extends StatefulWidget {
  const TermsOfUse({super.key});

  @override
  State<TermsOfUse> createState() => _TermsOfUseState();
}

class _TermsOfUseState extends State<TermsOfUse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: bpadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  }, 
                  icon: Icon(Icons.arrow_back_ios)
                ),

                SizedBox(height: 15,),
            
                Text('Terms and Conditions of Use', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),

                SizedBox(height: 10,),

                Text('These terms and conditions outline the rules and regulations for the use of Explore Uganda mobile application. \n \n By accessing this mobile application, we assume you accept these terms and conditions in full. Do not continue to use Explore Uganda mobile application if you do not accept all of the terms and conditions stated on this page.'),

                SizedBox(height: 15,),

                Text('License', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),),

                SizedBox(height: 10,),

                Text('Unless otherwise stated, Explore Uganda and/or its licensors own the intellectual property rights for all material on Explore Uganda. All intellectual property rights are reserved. You may access this from Explore Uganda for your own personal use subjected to restrictions set in these terms and conditions.'),
              
                SizedBox(height: 15,),

                Text('Restrictions', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),),

                SizedBox(height: 10,),

                Text('You are specifically restricted from all of the following: \n \n - Publishing any Explore Uganda material in any other media. \n- Selling, sub-licensing, and/or otherwise commercializing any Explore Uganda material. \n- Using this mobile application in any way that is or may be damaging to Explore Uganda. \n- Using this mobile application in any way that impacts user access to Explore Uganda. \n- Using this mobile application contrary to applicable laws and regulations, or in any way may cause harm to the mobile application, or to any person or business entity.'),
              
                SizedBox(height: 15,),

                Text('Disclaimer', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),),

                SizedBox(height: 10,),

                Text('This mobile application is provided "as is," with all faults, and Explore Uganda expresses no representations or warranties, of any kind related to this mobile application or the materials contained on this mobile application. Also, nothing contained on this mobile application shall be interpreted as advising you.'),
              
                SizedBox(height: 15,),

                Text('Limitation of Liability', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),),

                SizedBox(height: 10,),

                Text('In no event shall Explore Uganda, nor any of its officers, directors, and employees, be held liable for anything arising out of or in any way connected with your use of this mobile application, whether such liability is under contract. Explore Uganda, including its officers, directors, and employees shall not be held liable for any indirect, consequential, or special liability arising out of or in any way related to your use of this mobile application.'),
              
                SizedBox(height: 15,),

                Text('Indemnification', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),),

                SizedBox(height: 10,),

                Text('You hereby indemnify to the fullest extent Explore Uganda from and against any and/or all liabilities, costs, demands, causes of action, damages, and expenses arising in any way related to your breach of any of the provisions of these terms.'),
              
                SizedBox(height: 15,),

                Text('Severability', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),),

                SizedBox(height: 10,),

                Text('If any provision of these terms is found to be invalid under any applicable law, such provisions shall be deleted without affecting the remaining provisions herein.'),

                SizedBox(height: 15,),

                Text('Variation of Terms', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),),

                SizedBox(height: 10,),

                Text('Explore Uganda is permitted to revise these terms at any time as it sees fit, and by using this mobile application you are expected to review these terms on a regular basis.'),

                SizedBox(height: 15,),

                Text('Governing Law & Jurisdiction', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),),

                SizedBox(height: 10,),

                Text('These terms will be governed by and construed in accordance with the laws of Uganda, and you submit to the non-exclusive jurisdiction of the state and federal courts located in Uganda for the resolution of any disputes.'),

                SizedBox(height: 15,),

                SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(appcolor),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        child: const Text(
                          'I Agree',
                          style: subwords,
                        ),
                      ),
                    ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
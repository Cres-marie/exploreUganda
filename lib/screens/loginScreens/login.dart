import 'package:explore_uganda/components/constants/constants.dart';
import 'package:explore_uganda/screens/loginScreens/signUp.dart';
import 'package:explore_uganda/screens/onBoardingScreens/onboarding.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: bpadding,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Log In',
                  style: TextStyle(
                      fontSize: 37,
                      color: appcolor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Welcome Back.',
                  style: subwords,
                ),
                SizedBox(
                  height: 15,
                ),
                Form(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Username',
                        hintStyle: hintext,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: appcolor,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xFFF3BC43),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: appcolor,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: hintext,
                        suffixIcon: Icon(Icons.visibility),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: appcolor,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: appcolor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: appcolor,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigate to the onboarding screens here
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OnBoarding()), // Replace with your OnboardingScreens widget
                      );
                        },
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(appcolor),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Log In',
                          style: subwords,
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Forgot Password?')
                      ],
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        Text('OR'),
                      ],
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: OutlinedButton.icon(
                        onPressed: (){}, 
                        style: ButtonStyle(
                          side: WidgetStateProperty.all(
                        BorderSide(color: appcolor), // Border color
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                        ),

                        icon: Image.asset('assets/google.png',
                    height: 23.0,
                    width: 23.0,
                  ),
                        label: Text('Sign Up with Google', style: subwords,)
                      ),
                    ),

                    const SizedBox(
                      height: 15,
                    ),

                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: OutlinedButton.icon(
                        onPressed: (){}, 
                        style: ButtonStyle(
                          side: WidgetStateProperty.all(
                        BorderSide(color: appcolor), // Border color
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                        ),

                        icon: Image.asset('assets/facebook.png',
                    height: 23.0,
                    width: 23.0,
                  ),
                        label: Text('Sign Up with Facebook', style: subwords,)
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "Don’t have an account? ", style: subwords,
                            children: [
                              TextSpan(
                          text: "Sign Up",
                          style: TextStyle(
                            color: appcolor, // Color for the "Sign Up" text
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Navigate to the sign up page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUp(), // Replace with your sign up page widget
                  ),
                );
              },
                        ),
                            ]
                          ),
                        )
                      ],
                    ),


                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

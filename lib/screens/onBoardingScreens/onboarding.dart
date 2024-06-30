import 'package:explore_uganda/components/constants/constants.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        PageView(
          controller: _pageController,
          onPageChanged: (value) {
            setState(() {
              _currentPage = value;
            });
          },
          children: [
            onboarding(
              imageAsset: 'assets/ZZ EXTRA - 4-19.jpg',
              heading: 'Did you know?',
              subtext:
                  'Uganda has over 1000 species of birds making it a heaven for birdwatchers. With a percentage of 68% of the continent and 12% of the total population in the world.\nAwesome right?',
            ),
            onboarding(
              imageAsset: 'assets/ZZ EXTRA - 4-24.jpg',
              heading: 'Did you know?',
              subtext:
                  'Uganda is blessed to have more than 165 lakes including Lake Victoria the second largest freshwater lake, 14 waterfalls and 8 major rivers and including the source of the Nile',
            ),
            onboarding(
              imageAsset: 'assets/ZZ EXTRA - 4-27.jpg',
              heading: 'Did you know?',
              subtext:
                  'Uganda is home to over 736 different cultures and has over 5 dominant regions',
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.only(left:20, right:20, bottom:10 ),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                TextButton(
                    onPressed: _currentPage == 0
                        ? null
                        : () {
                            _pageController.jumpToPage(0);
                          },
                    child: Text('Skip'),
                  ),

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
                              color:
                                  _currentPage == index ? Colors.white : Colors.grey,
                              shape: BoxShape.circle,
                          ),
                        );
                      }),
                ),

                 TextButton(
                    onPressed: () {
                      if (_currentPage == 2) {
                        // Navigate to the home page
                        Navigator.pushReplacementNamed(context, '/bottombar');
                      }else {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                      child: Text(_currentPage == 2 ? 'Done' : 'Next'),  
                  ),

              ],
            ),
          ),
        )
      ]),
    );
  }
}

class onboarding extends StatefulWidget {
  const onboarding({
    super.key,
    required this.imageAsset,
    required this.heading,
    required this.subtext,
  });

  final String imageAsset;
  final String heading;
  final String subtext;

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.imageAsset),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomLeft,
        child: ClipPath(
          clipper: BottomLeftClipper(),
          child: Container(
              color: onboardingcontainer,
              height:250,
              child: Padding(
                padding: bpadding,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.heading,
                      style: bheadings,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      widget.subtext,
                      style: subwords,
                    ),
                  ],
                ),
              )),
        ),
      )
    ]);
  }
}

class BottomLeftClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height); // Line to bottom left
    path.lineTo(size.width, size.height); // Line to bottom right
    path.lineTo(size.width, 20); // Move to near top right
    path.quadraticBezierTo(
        size.width, 0, size.width - 20, 0); // Curve to top right
    path.lineTo(20, 0); // Line to near top left
    path.quadraticBezierTo(0, 0, 0, 20); // Curve to top left
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

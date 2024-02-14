import 'package:flutter/material.dart';
import 'package:untitled6/modules/login/login_screen.dart';

import '../../shared/components/constants.dart';

class OnboardingScreen1 extends StatefulWidget {

  @override
  State<OnboardingScreen1> createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
              padding: const EdgeInsets.only(
                right: 20.0,
                top: 20.0
              ),
            child: InkWell(
              onTap: (){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (_) => LoginScreen())
                );
              }, // to login screen
              child: const Text(
                'Skip',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            onPageChanged: (int page){
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            children: [
              createPage(
                image: 'assets/images/onpic11.png',
                title: Constants.titleOne1,
                title1: Constants.titleOne2,
                description: Constants.descriptionOne,
              ),
              createPage(
                image: 'assets/images/onpic22.png',
                title: Constants.titleTwo1,
                title1: Constants.titleTwo2,
                description: Constants.descriptionTwo,
              ),
              createPage(
                image: 'assets/images/onpic33.png',
                title: Constants.titleThree1,
                title1: Constants.titleThree2,
                description: Constants.descriptionThree,
              ),
              createPage(
                image: 'assets/images/onpic44.png',
                title: Constants.titleFour1,
                title1: Constants.titleFour2,
                description: Constants.descriptionFour,
              ),
              createPage(
                image: 'assets/images/onpic55.png',
                title: Constants.titleFive1,
                title1: Constants.titleFive2,
                description: Constants.descriptionFive,
              ),
            ],
          ),
          Positioned(
            height: 180.0,

            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: _buildIndicator(),

              ),
          ),
          Positioned(
            bottom: 20.0,
              right: 30.0,
              child: Container(
                child: IconButton(
                  onPressed: ()
                  {
                    setState(() {
                      if (currentIndex < 5){
                        currentIndex++;
                        if (currentIndex < 6){
                          _pageController.nextPage(
                              duration: const Duration(milliseconds: 1),
                              curve: Curves.easeIn
                          );
                        }
                      }
                      else {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (_) => LoginScreen())
                      );
                    }
                  });
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 24.0,
                    color: Colors.white,
                  ),

                ),
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.primaryColor,
                ),
              ),
          ),
        ],
      ),

    );
  }

  //Extra widgets

  // create the indicator decoration widget
  Widget _indicator(bool isActive){
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 10.0,
      width: isActive ? 20 : 8,
      margin: const EdgeInsets.only(
        right: 5.0,
      ),
      decoration: BoxDecoration(
        color: Constants.primaryColor,
        borderRadius: BorderRadius.circular(5.0),
      ),
    );

  }

  // Create the indicator list
  List<Widget> _buildIndicator(){
    List<Widget> indicators = [];

    for (int i = 0; i < 6; i++){
      if (currentIndex == i){
        indicators.add(_indicator(true));
      }
      else {
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }

}

class createPage extends StatelessWidget {
  final String image;
  final String title;
  final String title1;
  final String description;
  const createPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.title1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 50.0,
        right: 50.0,
        bottom: 80.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image(
            image: AssetImage(image),
            height: 250.0,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
              title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Constants.primaryColor,
            ),
          ),
          Text(
            title1,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Constants.primaryColor,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ],

      ),

    );
  }
}



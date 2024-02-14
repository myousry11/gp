import 'package:flutter/material.dart';
import 'package:untitled6/modules/onboarding/ob1_screen.dart';

class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState()
  {
    super.initState();
    _navigatetolog();
  }
  _navigatetolog() async
  {
    await Future.delayed(Duration(seconds: 5), ()
    {
      Navigator.pushReplacement(context,
        MaterialPageRoute(
            builder: (context) => OnboardingScreen1()
        ),
      );
    });

  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Center(
                  child: Image(
                    image: AssetImage('assets/images/logg.jpg'),
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
            ),
          ],
        ),
      ),

    );
  }
}

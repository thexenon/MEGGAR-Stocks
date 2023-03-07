import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:meggar/screens/login1.dart';
import 'package:meggar/screens/signup.dart';

class Introscreen extends StatelessWidget {
  const Introscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
          child: IntroductionScreen(
            pages: [
              PageViewModel(
                title: 'Welcome to Meggar Stocks',
                body: 'Welcome message',
                image: buildImage('assets/tradebuysell.png'),
                decoration: getDecoration()
                
              ),
              PageViewModel(
                title: 'Good Rates',
                body: 'Welcome message',
                image: buildImage('assets/rates.png'),
                decoration: getDecoration()
                
              ),
              PageViewModel(
                title: 'Buy & Sell',
                body: 'Welcome message',
                image: buildImage('assets/buyandsell.jpg'),
                decoration: getDecoration()
                
              ),
              PageViewModel(
                title: 'Secure System',
                body: 'Welcome message',
                image: buildImage('assets/securesys.jpg'),
                decoration: getDecoration()
                
              ),
            ],
              done: const Text(
        'SignUp',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      onDone: () {gotoSignUp(context);},
      next: const Text(
        'Next',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      showSkipButton: true,
      skip: const Text(
        'Skip',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),

      )
      );
      
      Widget buildImage(String path) => Center(child: Image.asset(path, width: 350),);
      
      PageDecoration getDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        imagePadding: EdgeInsets.all(24),
        bodyPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        pageColor: Colors.white
      );

}

void gotoSignUp(context) => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => Login()));

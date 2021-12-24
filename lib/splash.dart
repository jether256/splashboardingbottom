import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:get_storage/get_storage.dart';
import 'package:lottie/lottie.dart';
import 'package:splashboardingbottom/screens/mainS.dart';

import 'home.dart';
import 'onboard/bo.dart';


class Splash extends StatefulWidget {
  static const  String id='splash';

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final store=GetStorage();

  @override
  void initState() {

     Timer( const Duration(seconds: 5,),(){

      // Navigator.push(
      //      context,
      //      MaterialPageRoute(
      //        builder: (context) =>  MainScreen(),
      //      )
      //  );

       bool? _bord =store.read('OnBoarding');

        _bord == null ? Navigator.pushReplacementNamed(context, Bo.id):
        _bord == true ? Navigator.pushReplacementNamed(context, MainScreen.id):
            //if false
       Navigator.pushReplacementNamed(context,MainScreen.id);
     });

     super.initState();
  }


  @override
  Widget build(BuildContext context) {
    const colorizeColors=[
      Colors.white,
      Colors.grey,
    ];

    const colorizeTextStyle=TextStyle(
      fontSize: 50.0,
      fontFamily: 'Gothic',
    );


    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset(
              'assets/lot/jam.json',
              // color: Colors.white,
              height: 200,
            ),
            const SizedBox(height: 10,),
            AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(
                  'Garage Yo',
                  textStyle:colorizeTextStyle,
                  colors:colorizeColors,
                ),
              ],

            ),
          ],
        ),
      ),
    );
  }
}


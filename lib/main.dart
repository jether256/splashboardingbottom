import 'package:flutter/material.dart';

import 'package:get_storage/get_storage.dart';
import 'package:splashboardingbottom/screens/mainS.dart';
import 'package:splashboardingbottom/splash.dart';

import 'home.dart';
import 'onboard/bo.dart';


void main() async{
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Garage yo',
      theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          fontFamily: 'Gothic'
      ),
      initialRoute: Splash.id,// first route
      routes: {
        //we will add the screens here for easy navigation
        Splash.id:(context)=>Splash(),
        Bo.id:(context)=>Bo(),
        MainScreen.id:(context)=>MainScreen(),
      },
    );
  }
}


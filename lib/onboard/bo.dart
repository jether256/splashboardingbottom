import 'dart:ui';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get_storage/get_storage.dart';
import 'package:lottie/lottie.dart';
import 'package:splashboardingbottom/screens/mainS.dart';


class Bo extends StatefulWidget {
  static const  String id='bo';

  @override
  _BoState createState() => _BoState();
}

class _BoState extends State<Bo> {
  double scrollPosition=0;
  final store=GetStorage();

  onButtonPressed( context){

    //before going to the manin screen will save to device first,
    store.write('OnBoarding',true);
   return  Navigator.pushReplacementNamed(context,MainScreen.id);

  }

  @override
  Widget build(BuildContext context) {

SystemChrome.setPreferredOrientations(
  [
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]
);

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (val){
              setState(() {
                scrollPosition=val.toDouble();
              });
            },
            children: [
              Board(
              boardColumn:Column(
                mainAxisSize: MainAxisSize.min,
                children:[

                  const Text('Welcome\n To Garage Yo App',
                    textAlign: TextAlign.center,
                    style:TextStyle(color: Colors.white,fontSize: 32),),
                  const SizedBox(height: 10,),
                  const Text('+200 Garages +20 Services ',
                    textAlign: TextAlign.center,
                    style:TextStyle(color: Colors.deepOrange,fontSize: 28),),
                  const SizedBox(height: 20,),

                  SizedBox(
                    height: 300,
                      width: 300,
                      child:Lottie.asset(
                        'assets/lot/jam.json',


                      ),
                  ),
                ],

                  ),
              ),
              Board(
              boardColumn:Column(
                mainAxisSize: MainAxisSize.min,
                children:[

                  const Text('Open 24-7',
                    textAlign: TextAlign.center,
                    style:TextStyle(color: Colors.white,fontSize: 32),),
                  const SizedBox(height: 10,),
                  const Text('Satisfaction guaranteed',
                    textAlign: TextAlign.center,
                    style:TextStyle(color: Colors.white,fontSize: 28),),
                  const SizedBox(height: 20,),

                  SizedBox(
                    height: 300,
                      width: 330,
                      child: Lottie.asset(
                        'assets/lot/moto.json',


                      ),
                  ),
                ],

                  ),
              ),
              Board(
                boardColumn:Column(
                  mainAxisSize: MainAxisSize.min,
                  children:[

                    const Text('Find your favourite Repair Services',
                      textAlign: TextAlign.center,
                      style:TextStyle(color: Colors.white,fontSize: 32),),


                    const SizedBox(height: 24,),

                    SizedBox(
                      height: 300,
                      width: 300,
                      child: Lottie.asset(
                        'assets/lot/team.json',


                      ),
                    ),
                  ],

                ),
              ),
              Board(
                boardColumn:Column(
                  mainAxisSize: MainAxisSize.min,
                  children:[

                    const Text('Book a Garage service \n with a click',
                      textAlign: TextAlign.center,
                      style:TextStyle(color: Colors.white,fontSize: 32),),


                    const SizedBox(height: 24,),

                    SizedBox(
                      height: 300,
                      width: 300,
                      child:Lottie.asset(
                        'assets/lot/book.json',


                      ),
                    ),
                  ],

                ),
              ),
              Board(
                boardColumn:Column(
                  mainAxisSize: MainAxisSize.min,
                  children:[

                    const Text('Experience best CarWash Services',
                      textAlign: TextAlign.center,
                      style:TextStyle(color: Colors.white,fontSize: 32),),


                    const SizedBox(height: 24,),

                    SizedBox(
                      height: 300,
                      width: 300,
                      child:Lottie.asset(
                        'assets/lot/clin.json',


                      ),
                    ),
                  ],

                ),
              ),
            ],
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
                children: [

                  DotsIndicator(
                  position: scrollPosition,
                  dotsCount: 5,
                  decorator: DotsDecorator(

                  spacing: EdgeInsets.all(2),
                  size: Size.square(6),
                  activeSize: Size(12, 6),
                  activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)
                  ),
                  ),
                  ),

                  scrollPosition==4 ? ElevatedButton(

                      onPressed:(){

                        onButtonPressed(context);
                      },
                      child:Text('Start Booking'
                      ,style:TextStyle(color: Colors.white),

                      )
                  ):


                  TextButton(
                      onPressed: ()
                        {
                         onButtonPressed(context);
                        },
                      child: const Text('SKIP TO THE APP>',
                      style: TextStyle(fontSize: 20,color: Colors.white),),
                      ),

    const SizedBox(height: 20,),
    ],

          ),
          ),
        ],
      ),
    );
  }
}

class Board extends StatelessWidget {
  // final Image? boardImage;
  final Column? boardColumn;
  const Board({Key? key, this.boardColumn}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.lightBlue,
          child: Center(child: boardColumn),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 120,
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100),
                topRight: Radius.circular(100),
              ),
            ),

          ),
          

        ),
      ],
    );
  }
}





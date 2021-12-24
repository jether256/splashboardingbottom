import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    const colorizeColors=[
      Colors.white,
      Colors.grey,
    ];

    const colorizeTextStyle=TextStyle(
      fontSize: 20.0,
      fontFamily: 'Gothic',
    );

    return Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor:Colors.lightBlue,

            title: AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(
                  'Garage Yo',
                  textStyle:colorizeTextStyle,
                  colors:colorizeColors,
                ),
              ],
            ),
            actions: [



            ],
          ),
        ),
      body: Center(
        child: Text('Cart'),
      ),
    );
  }
}

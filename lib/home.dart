import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';


class HomeScreen extends StatefulWidget {
  static const  String id='home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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


            IconButton(
              onPressed:(){



              },
              icon:const Icon(Icons.login,color:Colors.white),
            ),
            IconButton(
                onPressed:(){},
                icon:const Icon(Icons.shopping_cart,color:Colors.white),
            ),
          ],
        ),
      ),
      body:ListView(
            children:const [
               SearchWidget(),
              SizedBox(height: 10,),


            ],
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 55,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.fromLTRB(8, 5, 8, 0),
                  hintText: 'Search for A Garage',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.search,size: 20,color: Colors.grey,),

                ),
              ),

            ),
          ),
        ),


        SizedBox(
          height: 20,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Row(
                children: const [
                  Icon(IconlyLight.infoSquare,size:12,color:Colors.white),
                  Text('100 % Genuine',style: TextStyle(color: Colors.white,fontSize:12 ),)
                ],
              ),
              Row(
                children: const [
                  Icon(IconlyLight.infoSquare,size:12,color:Colors.white),
                  Text('24-7 working days',style: TextStyle(color: Colors.white,fontSize:12 ),)
                ],
              ),
              Row(
                children: const [
                  Icon(IconlyLight.infoSquare,size:12,color:Colors.white),
                  Text('Trusted Garages',style: TextStyle(color: Colors.white,fontSize:12 ),)
                ],
              ),
            ],
          ),

        ),
      ],
    );
  }
}

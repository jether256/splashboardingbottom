
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
      // appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(40),
      //   child: AppBar(
      //     elevation: 0,
      //     centerTitle: true,
      //     backgroundColor:Colors.lightBlue,
      //
      //     title: const Text('Search Garage',style: TextStyle(color: Colors.white,fontSize:20 ),),
      //     actions: [
      //
      //
      //       IconButton(
      //         onPressed:(){},
      //         icon:const Icon(CupertinoIcons.location_solid,color:Colors.white),
      //       ),
      //     ],
      //   ),
      // ),
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                        Icon(IconlyLight.location,size:12,color:Colors.white),
                        Text('Exact Garage location',style: TextStyle(color: Colors.white,fontSize:12 ),)
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(IconlyLight.location,size:12,color:Colors.white),
                        Text('24-7 working days',style: TextStyle(color: Colors.white,fontSize:12 ),)
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(IconlyLight.location,size:12,color:Colors.white),
                        Text('Trusted Garages',style: TextStyle(color: Colors.white,fontSize:12 ),)
                      ],
                    ),
                  ],
                ),

              ),

            ],
          ),
        ),
      ),
    );
  }
}

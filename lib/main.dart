import 'package:animal_sound/models/Animal.dart';
import 'package:flutter/material.dart';
import "dart:math";

import 'screens/PetScreen.dart';
import 'screens/WildScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}




class MyHomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image(image: AssetImage("assets/logo.png")),
              SizedBox(height: 50,),
              Container(
                width: 250,
                height: 50,
                child: RaisedButton(
                  color: Color(0xFF35D451),
                  child: Text("Домашние животные"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PetScreen()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 250,
                height: 50,
                child: RaisedButton(
                  color: Color(0xFFFDE104),
                  child: Text("Дикие животные"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WildScreen()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                ),
              )
            ],
          ),
        ));
  }
}

/*



      */

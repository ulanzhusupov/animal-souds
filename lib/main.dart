import 'package:animal_sound/models/Animal.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import "dart:math";

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

var pets = [
  Animal(rus: "Слон", kg: "Пил", img: "assets/slon.png"),
];
var wildAnimals = [
  Animal(rus: "Слон", kg: "Пил", img: "assets/slon.png"),
];

class MyHomePage extends StatelessWidget {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: TweenAnimationBuilder(
          duration: Duration(seconds: 2),
          tween: Tween<double>(begin: 0, end: 1),
          builder: (_, double angle, __) {
            return Column(
              children: [
                Transform.scale(
                  scale: angle,
                  child: RaisedButton(
                      onPressed: () {
                        player.clearCache();
                        player.play("animals/cat.mp3");
                      },
                      child: Image(image: AssetImage(pets[0].getImg()))),
                ),
                Transform.scale(
                  scale: angle,
                  child: RaisedButton(
                      onPressed: () {
                        player.clearCache();
                        player.play("animals/cow.mp3");
                      },
                      child: Image(image: AssetImage(pets[0].getImg()))),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

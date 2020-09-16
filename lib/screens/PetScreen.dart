import 'package:animal_sound/const.dart';
import "package:flutter/material.dart";
import 'package:just_audio/just_audio.dart';

import '../models/Animal.dart';

var pets = [
  Animal(
      rus: "Кошка",
      kg: "Мышык",
      img: "assets/animals/cat.png",
      sound: "assets/animals/cat.mp3"),
  Animal(
      rus: "Морская свинка",
      kg: "Деңиз чочкосу",
      img: "assets/animals/cavy.jpg",
      sound: "assets/animals/cavy.mp3"),
  Animal(
      rus: "Курица",
      kg: "Тоок",
      img: "assets/animals/chicken.jpg",
      sound: "assets/animals/chicken.mp3"),
  Animal(
      rus: "Петух",
      kg: "Короз",
      img: "assets/animals/cock.jpg",
      sound: "assets/animals/cock.mp3"),
  Animal(
      rus: "Цыплёнок",
      kg: "Чөжө",
      img: "assets/animals/chickens.png",
      sound: "assets/animals/chickens.mp3"),
  Animal(
      rus: "Корова",
      kg: "Уй",
      img: "assets/animals/cow.jpg",
      sound: "assets/animals/cow.mp3"),
  Animal(
      rus: "Собака",
      kg: "Ит",
      img: "assets/animals/dog.jpg",
      sound: "assets/animals/dog.mp3"),
  Animal(
      rus: "Утка",
      kg: "Өрдөк",
      img: "assets/animals/duck.png",
      sound: "assets/animals/duck.mp3"),
  Animal(
      rus: "Хорёк",
      kg: "Күзөн",
      img: "assets/animals/ferret.png",
      sound: "assets/animals/ferret.wav"),
  Animal(
      rus: "Козёл",
      kg: "Теке",
      img: "assets/animals/goat.png",
      sound: "assets/animals/goat.mp3"),
  Animal(
      rus: "Гусь",
      kg: "Каз",
      img: "assets/animals/goose.png",
      sound: "assets/animals/goose.mp3"),
  Animal(
      rus: "Хомяк",
      kg: "Хомяк",
      img: "assets/animals/hamster.jpg",
      sound: "assets/animals/hamster.mp3"),
  Animal(
      rus: "Заяц",
      kg: "Коён",
      img: "assets/animals/hare.png",
      sound: "assets/animals/hare.wav"),
  Animal(
      rus: "Лошадь",
      kg: "Ат",
      img: "assets/animals/horse.png",
      sound: "assets/animals/horse.mp3"),
  Animal(
      rus: "Мышь",
      kg: "Чычкан",
      img: "assets/animals/mouse.png",
      sound: "assets/animals/mouse.mp3"),
  Animal(
      rus: "Попугай",
      kg: "Тоту куш",
      img: "assets/animals/parrot.png",
      sound: "assets/animals/parrot.wav"),
  Animal(
      rus: "Свинья",
      kg: "Чочко",
      img: "assets/animals/pig.png",
      sound: "assets/animals/pig.mp3"),
  Animal(
      rus: "Щенок",
      kg: "Күчүк",
      img: "assets/animals/puppy.png",
      sound: "assets/animals/puppy.mp3"),
  Animal(
      rus: "Овец",
      kg: "Кой",
      img: "assets/animals/sheep.png",
      sound: "assets/animals/sheep.mp3"),
  Animal(
      rus: "Белка",
      kg: "Тыйын чычкан",
      img: "assets/animals/squirrel.jpg",
      sound: "assets/animals/squirrel.mp3"),
  Animal(
      rus: "Индейка",
      kg: "Күрп",
      img: "assets/animals/turkey.jpg",
      sound: "assets/animals/turkey.mp3"),
];

class PetScreen extends StatefulWidget {
  @override
  _PetScreenState createState() => _PetScreenState();
}

class _PetScreenState extends State<PetScreen> {
  AudioPlayer player = AudioPlayer();
  int currentPet = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            pets[currentPet].getRus(),
            style: kBoldTextStyle,
          ),
          Expanded(
            child: TweenAnimationBuilder(
              duration: Duration(seconds: 2),
              tween: Tween<double>(begin: 0, end: 1),
              builder: (_, double angle, __) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.scale(
                      scale: angle,
                      child: FlatButton(
                          onPressed: () async {
                            await player.stop();
                            await player.setAsset(pets[currentPet].getSound());
                            await player.play();
                          },
                          child: Image(
                              width: 250,
                              image: AssetImage(pets[currentPet].getImg()))),
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Left button
              currentPet > 0
                  ? FlatButton(
                      onPressed: () {
                        setState(() {
                          currentPet--;

                          player.stop();
                          player.setAsset(pets[currentPet].getSound());
                          player.play();
                        });
                      },
                      child: Image(
                        width: 50.0,
                        height: 50.0,
                        image: AssetImage("assets/left.png"),
                      ))
                  : SizedBox(
                      width: 50.0,
                      height: 50.0,
                    ),
              // Home button
              FlatButton(
                  onPressed: () {
                    player.stop();
                    Navigator.pop(context);
                  },
                  child: Image(
                    width: 50.0,
                    height: 50.0,
                    image: AssetImage("assets/home.png"),
                  )),
              // Right button
              currentPet < pets.length - 1
                  ? FlatButton(
                      onPressed: () {
                        setState(()  {
                          currentPet++;

                          player.stop();
                          player.setAsset(pets[currentPet].getSound());
                          player.play();
                        });
                      },
                      child: Image(
                        width: 50.0,
                        height: 50.0,
                        image: AssetImage("assets/right.png"),
                      ))
                  : SizedBox(
                      width: 50.0,
                      height: 50.0,
                    ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

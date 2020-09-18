import "package:flutter/material.dart";
import 'package:just_audio/just_audio.dart';

import '../const.dart';
import '../models/Animal.dart';

var wild = [
  Animal(
      rus: "Лев",
      kg: "Арстан",
      img: "assets/animals/wildanimals/lion.png",
      sound: "assets/animals/wildanimals/lion.wav"),
  Animal(
      rus: "Орёл",
      kg: "Бүркүт",
      img: "assets/animals/wildanimals/eagle.png",
      sound: "assets/animals/wildanimals/eagle.wav"),
  Animal(
      rus: "Волк",
      kg: "Карышкыр",
      img: "assets/animals/wildanimals/wolf.jpg",
      sound: "assets/animals/wildanimals/wolf.mp3"),
  Animal(
      rus: "Тигр",
      kg: "Жолборс",
      img: "assets/animals/wildanimals/tiger.png",
      sound: "assets/animals/wildanimals/tiger.wav"),
  Animal(
      rus: "Зебра",
      kg: "Зебра",
      img: "assets/animals/wildanimals/zebra.png",
      sound: "assets/animals/wildanimals/zebra.mp3"),
  Animal(
      rus: "Муравьед",
      kg: "Кумурскачы",
      img: "assets/animals/wildanimals/anteater.png",
      sound: "assets/animals/wildanimals/anteater.mp3"),
  Animal(
      rus: "Медведь",
      kg: "Аюу",
      img: "assets/animals/wildanimals/bear.jpg",
      sound: "assets/animals/wildanimals/bear.mp3"),
  Animal(
      rus: "Бобер",
      kg: "Кемчет",
      img: "assets/animals/wildanimals/beaver.jpg",
      sound: "assets/animals/wildanimals/beaver.mp3"),
  Animal(
      rus: "Броненосец",
      kg: "Броненосец",
      img: "assets/animals/wildanimals/armadillo.jpg",
      sound: "assets/animals/wildanimals/armadillo.mp3"),
  Animal(
      rus: "Пчела",
      kg: "Бал аарысы",
      img: "assets/animals/wildanimals/bee.jpg",
      sound: "assets/animals/wildanimals/bee.mp3"),
  Animal(
      rus: "Бизон",
      kg: "Бизон",
      img: "assets/animals/wildanimals/bison.jpg",
      sound: "assets/animals/wildanimals/bison.mp3"),
  Animal(
      rus: "Верблюд",
      kg: "Төө",
      img: "assets/animals/wildanimals/camel.png",
      sound: "assets/animals/wildanimals/camel.mp3"),
  Animal(
      rus: "Шимпанзе",
      kg: "Шимпанзе",
      img: "assets/animals/wildanimals/chimpanzee.png",
      sound: "assets/animals/wildanimals/chimpanzee.wav"),
  Animal(
      rus: "Кузнечик",
      kg: "Чегиртке",
      img: "assets/animals/wildanimals/cricket.png",
      sound: "assets/animals/wildanimals/cricket.mp3"),
  Animal(
      rus: "Крокодил",
      kg: "Крокодил",
      img: "assets/animals/wildanimals/crocodile.jpg",
      sound: "assets/animals/wildanimals/crocodile.wav"),
  Animal(
      rus: "Олень",
      kg: "Бугу",
      img: "assets/animals/wildanimals/deer.png",
      sound: "assets/animals/wildanimals/deer.mp3"),
  Animal(
      rus: "Дельфин",
      kg: "Дельфин",
      img: "assets/animals/wildanimals/dolphin.png",
      sound: "assets/animals/wildanimals/dolphin.mp3"),
  Animal(
      rus: "Осёл",
      kg: "Эшек",
      img: "assets/animals/wildanimals/donkey.png",
      sound: "assets/animals/wildanimals/donkey.mp3"),
  Animal(
      rus: "Стрекоза",
      kg: "Ийнелик",
      img: "assets/animals/wildanimals/dragonfly.jpg",
      sound: "assets/animals/wildanimals/dragonfly.mp3"),
  Animal(
      rus: "Слон",
      kg: "Пил",
      img: "assets/animals/wildanimals/elephant.png",
      sound: "assets/animals/wildanimals/elephant.mp3"),
  Animal(
      rus: "Муха",
      kg: "Чымын",
      img: "assets/animals/wildanimals/fly.png",
      sound: "assets/animals/wildanimals/fly.mp3"),
  Animal(
      rus: "Лиса",
      kg: "Түлкү",
      img: "assets/animals/wildanimals/fox.jpg",
      sound: "assets/animals/wildanimals/fox.wav"),
  Animal(
      rus: "Лягушка",
      kg: "Бака",
      img: "assets/animals/wildanimals/frog.png",
      sound: "assets/animals/wildanimals/frog.wav"),
  Animal(
      rus: "Жираф",
      kg: "Жираф",
      img: "assets/animals/wildanimals/giraff.jpg",
      sound: "assets/animals/wildanimals/giraff.mp3"),
  Animal(
      rus: "Горилла",
      kg: "Горилла",
      img: "assets/animals/wildanimals/gorilla.png",
      sound: "assets/animals/wildanimals/gorilla.wav"),
  Animal(
      rus: "Бегемот",
      kg: "Бегемот",
      img: "assets/animals/wildanimals/hippo.jpg",
      sound: "assets/animals/wildanimals/hippo.wav"),
  Animal(
      rus: "Удод",
      kg: "Үпүп",
      img: "assets/animals/wildanimals/hoopoe.jpg",
      sound: "assets/animals/wildanimals/hoopoe.mp3"),
  Animal(
      rus: "Гиена",
      kg: "Гиена",
      img: "assets/animals/wildanimals/hyena.png",
      sound: "assets/animals/wildanimals/hyena.mp3"),
  Animal(
      rus: "Кенгуру",
      kg: "Кенгуру",
      img: "assets/animals/wildanimals/kangaroo.png",
      sound: "assets/animals/wildanimals/kangaroo.mp3"),
  Animal(
      rus: "Коала",
      kg: "Коала",
      img: "assets/animals/wildanimals/koala.png",
      sound: "assets/animals/wildanimals/koala.mp3"),
  Animal(
      rus: "Леопард",
      kg: "Кабылан",
      img: "assets/animals/wildanimals/leopard.png",
      sound: "assets/animals/wildanimals/leopard.wav"),
  Animal(
      rus: "Страус",
      kg: "Төө куш",
      img: "assets/animals/wildanimals/ostrich.png",
      sound: "assets/animals/wildanimals/ostrich.mp3"),
  Animal(
      rus: "Выдра",
      kg: "Кундуз",
      img: "assets/animals/wildanimals/otter.png",
      sound: "assets/animals/wildanimals/otter.mp3"),
  Animal(
      rus: "Павлин",
      kg: "Павлин",
      img: "assets/animals/wildanimals/peacock.png",
      sound: "assets/animals/wildanimals/peacock.mp3"),
  Animal(
      rus: "Сова",
      kg: "Жапалак үкү",
      img: "assets/animals/wildanimals/owl.png",
      sound: "assets/animals/wildanimals/owl.mp3"),
  Animal(
      rus: "Панда",
      kg: "Панда",
      img: "assets/animals/wildanimals/panda.png",
      sound: "assets/animals/wildanimals/panda.wav"),
  Animal(
      rus: "Пантера",
      kg: "Пантера",
      img: "assets/animals/wildanimals/panther.png",
      sound: "assets/animals/wildanimals/panther.mp3"),
  Animal(
      rus: "Голубь",
      kg: "Көгүчкөн",
      img: "assets/animals/wildanimals/pigeon.jpg",
      sound: "assets/animals/wildanimals/pigeon.mp3"),
  Animal(
      rus: "Пингвин",
      kg: "Пингвин",
      img: "assets/animals/wildanimals/penguin.jpg",
      sound: "assets/animals/wildanimals/penguin.mp3"),
  Animal(
      rus: "Ворон",
      kg: "Карга",
      img: "assets/animals/wildanimals/raven.png",
      sound: "assets/animals/wildanimals/raven.mp3"),
  Animal(
      rus: "Носорог",
      kg: "Керик",
      img: "assets/animals/wildanimals/rhino.png",
      sound: "assets/animals/wildanimals/rhino.mp3"),
  Animal(
      rus: "Тюлень",
      kg: "Мөөр",
      img: "assets/animals/wildanimals/sealion.jpg",
      sound: "assets/animals/wildanimals/sealion.mp3"),
  Animal(
      rus: "Змея",
      kg: "Жылан",
      img: "assets/animals/wildanimals/snake.png",
      sound: "assets/animals/wildanimals/snake.mp3"),
  Animal(
      rus: "Морж",
      kg: "Морж",
      img: "assets/animals/wildanimals/walrus.jpg",
      sound: "assets/animals/wildanimals/walrus.mp3"),
  Animal(
      rus: "Кит",
      kg: "Кит",
      img: "assets/animals/wildanimals/whale.png",
      sound: "assets/animals/wildanimals/whale.mp3"),
  Animal(
      rus: "Дятел",
      kg: "Карагай",
      img: "assets/animals/wildanimals/woodpecker.jpg",
      sound: "assets/animals/wildanimals/woodpecker.wav"),
];

class WildScreen extends StatefulWidget {
  @override
  _WildScreenState createState() => _WildScreenState();
}

class _WildScreenState extends State<WildScreen> {
  final player = AudioPlayer();
  int currentWild = 0;

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
            wild[currentWild].getRus(),
            style: kBoldTextStyle,
          ),
          Expanded(
            child: TweenAnimationBuilder(
              duration: Duration(seconds: 2),
              tween: Tween<double>(begin: 0, end: 1),
              builder: (_, double angle, __) {
                return Transform.scale(
                  scale: angle,
                  child: FlatButton(
                      onPressed: () async {
                        await player.stop();
                        await player.setAsset(wild[currentWild].getSound());
                        await player.play();
                      },
                      child:
                          Image(image: AssetImage(wild[currentWild].getImg()))),
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
              currentWild > 0
                  ? FlatButton(
                      onPressed: () {
                        setState(() {
                          currentWild--;

                          player.stop();
                          player.setAsset(wild[currentWild].getSound());
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
              currentWild < wild.length - 1
                  ? FlatButton(
                      onPressed: () {
                        setState(() {
                          currentWild++;

                          player.stop();
                          player.setAsset(wild[currentWild].getSound());
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
            height: 20.0,
          ),
        ],
      ),
    );
  }
}

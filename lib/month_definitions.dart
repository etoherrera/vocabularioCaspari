import 'package:flutter/material.dart';
import 'package:vocabulariocaspari/components/word_page.dart';

final List<String> monthArray = [
  'Agosto',
  'Setiembre',
];

List<Widget> returnList({String month = 'Agosto'}) {
  switch (month) {
    case 'Agosto':
      return augustArray;
    case 'Setiembre':
      return septemberArray;
    default:
      return [Container()];
  }
}

List<Widget> augustArray = [
  WordPage(
      title: 'Cow',
      sound: 'cow.wav',
      pronounce: 'cow_word.mp3',
      image: 'images/cow.jpg'),
  WordPage(
      title: 'Pig',
      sound: 'pig.wav',
      pronounce: 'pig_word.mp3',
      image: 'images/pig.jpg'),
  WordPage(
      title: 'Hen',
      sound: 'hen.wav',
      pronounce: 'hen_word.mp3',
      image: 'images/hen.jpg'),
  WordPage(
      title: 'Chick',
      sound: 'chick.wav',
      pronounce: 'chick_word.mp3',
      image: 'images/chick.jpg'),
  WordPage(
      title: 'Rooster',
      sound: 'rooster.wav',
      pronounce: 'rooster_word.mp3',
      image: 'images/rooster.jpg'),
  WordPage(
      title: 'Horse',
      sound: 'horse.wav',
      pronounce: 'horse_word.mp3',
      image: 'images/horse.jpg'),
  WordPage(
      title: 'Whale',
      sound: 'whale.wav',
      pronounce: 'whale_word.mp3',
      image: 'images/whale.jpg'),
  WordPage(
      title: 'Shark',
      sound: 'shark.wav',
      pronounce: 'shark_word.mp3',
      image: 'images/shark.jpg'),
  WordPage(
      title: 'Fish',
      sound: 'fish.wav',
      pronounce: 'fish_word.mp3',
      image: 'images/fish.jpg'),
  WordPage(
      title: 'Octopus',
      sound: 'octopus.mp3',
      pronounce: 'octopus_word.mp3',
      image: 'images/octopus.jpg'),
  WordPage(
      title: 'Turtle',
      sound: 'turtle.wav',
      pronounce: 'turtle_word.mp3',
      image: 'images/turtle.jpg'),
  WordPage(
      title: 'Crab',
      sound: 'crab.wav',
      pronounce: 'crab_word.mp3',
      image: 'images/crab.jpg'),
  WordPage(
      title: 'Gorilla',
      sound: 'gorilla.wav',
      pronounce: 'gorilla_word.mp3',
      image: 'images/gorilla.jpg'),
  WordPage(
      title: 'Monkey',
      sound: 'monkey.mp3',
      pronounce: 'monkey_word.mp3',
      image: 'images/monkey.jpg'),
  WordPage(
      title: 'Lion',
      sound: 'lion.wav',
      pronounce: 'lion_word.mp3',
      image: 'images/lion.jpg'),
  WordPage(
      title: 'Elephant',
      sound: 'elephant.mp3',
      pronounce: 'elephant_word.mp3',
      image: 'images/elephant.jpg'),
  WordPage(
      title: 'Zebra',
      sound: 'zebra.wav',
      pronounce: 'zebra_word.mp3',
      image: 'images/zebra.jpg'),
  WordPage(
      title: 'Giraffe',
      sound: '',
      pronounce: 'giraffe_word.mp3',
      image: 'images/giraffe.jpg'),
  WordPage(
      title: 'Diamond',
      sound: '',
      pronounce: 'diamond_word.mp3',
      image: 'images/diamond.jpg'),
  WordPage(
      title: 'Pink',
      sound: '',
      pronounce: 'pink_word.mp3',
      image: 'images/pink.jpg'),
  WordPage(
      title: 'Purple',
      sound: '',
      pronounce: 'purple_word.mp3',
      image: 'images/purple.jpg'),
];

List<Widget> septemberArray = [
  WordPage(
      title: 'Ball',
      sound: 'ball.wav',
      pronounce: 'ball_word.mp3',
      image: 'images/ball.jpg'),
  WordPage(
      title: 'Doll',
      sound: '',
      pronounce: 'doll_word.mp3',
      image: 'images/doll.jpg'),
  WordPage(
      title: 'Car',
      sound: 'car.wav',
      pronounce: 'car_word.mp3',
      image: 'images/car.jpg'),
  WordPage(
      title: 'Bike',
      sound: 'bike.wav',
      pronounce: 'bike_word.mp3',
      image: 'images/bike.jpg'),
  WordPage(
      title: 'Train',
      sound: 'train.wav',
      pronounce: 'train_word.mp3',
      image: 'images/train.jpg'),
  WordPage(
      title: 'Teddy Bear',
      sound: '',
      pronounce: 'teddy_bear_word.mp3',
      image: 'images/teddy_bear.jpg'),
  WordPage(
      title: 'Blocks',
      sound: 'blocks.wav',
      pronounce: 'blocks_word.mp3',
      image: 'images/blocks.jpg'),
  WordPage(
      title: 'Bubbles',
      sound: 'bubbles.wav',
      pronounce: 'bubbles_word.mp3',
      image: 'images/bubbles.jpg'),
  WordPage(
      title: 'Play Doh',
      sound: '',
      pronounce: 'play_doh_word.mp3',
      image: 'images/play_doh.jpg'),
  WordPage(
      title: 'Teapot',
      sound: 'tea_pot.wav',
      pronounce: 'tea_pot_word.mp3',
      image: 'images/tea_pot.jpg'),
  WordPage(
      title: 'Star',
      sound: 'star.wav',
      pronounce: 'star_word.mp3',
      image: 'images/star.jpg'),
  WordPage(
      title: 'Brown',
      sound: '',
      pronounce: 'brown_word.mp3',
      image: 'images/brown.jpg'),
  WordPage(
      title: 'Gray',
      sound: '',
      pronounce: 'gray_word.mp3',
      image: 'images/gray.jpg'),
];

class ScreenArguments {
  final String month;

  ScreenArguments({this.month = ''});
}

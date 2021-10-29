import 'package:flutter/material.dart';
import 'package:vocabulariocaspari/utilities/constants.dart';
import 'package:audioplayers/audioplayers.dart';

class WordPage extends StatelessWidget {
  final String title;
  final String image;
  final String pronounce;
  final String sound;

  WordPage(
      {required this.title,
      required this.image,
      required this.pronounce,
      this.sound = ''});

  static AudioCache player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          child: Text(
            title,
            style: kPageTitle,
          ),
        ),
        Container(child: Image.asset(image)),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              sound == ''
                  ? Container()
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        minimumSize: Size(kButtonWidth,
                            kButtonHeight), // double.infinity is the width and 30 is the height
                      ),
                      onPressed: () {
                        player.play(sound);
                      },
                      child: Icon(
                        Icons.volume_up,
                        size: kIconSize,
                      ),
                    ),
              sound == '' ? Container() : SizedBox(width: kButtonHeight),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(kButtonWidth,
                      kButtonHeight), // double.infinity is the width and 30 is the height
                ),
                onPressed: () {
                  player.play(pronounce);
                },
                child: Icon(
                  Icons.record_voice_over,
                  size: kIconSize,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

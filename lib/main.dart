import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vocabulariocaspari/screens/month_list.dart';
import 'package:vocabulariocaspari/screens/words_carrousel.dart';
import 'screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(Vocabulario());
}

class Vocabulario extends StatelessWidget {
  Widget build(BuildContext context) {
    precacheImage(AssetImage("images/CaspariLogo1.jpg"), context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        MonthList.id: (BuildContext context) => MonthList(),
        WordsCarrousel.id: (BuildContext context) => WordsCarrousel(),
      },
    );
  }
}

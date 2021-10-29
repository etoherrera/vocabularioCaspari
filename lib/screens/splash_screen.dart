import 'package:flutter/material.dart';
import 'package:vocabulariocaspari/screens/month_list.dart';
import 'dart:async';
import 'package:vocabulariocaspari/utilities/constants.dart';
import 'package:vocabulariocaspari/utilities/size_config.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed(MonthList.id);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return new Scaffold(
      backgroundColor: kColor_Caspari,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                alignment: AlignmentDirectional.bottomCenter,
                child: Text(
                  'Vocabulario\nToddlers',
                  style: kTitle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Image.asset('images/CaspariLogo1.jpg'),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: AlignmentDirectional.bottomCenter,
                child: Text(
                  '2021',
                  style: kTitle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}

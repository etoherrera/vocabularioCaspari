import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vocabulariocaspari/month_definitions.dart';
import 'package:vocabulariocaspari/screens/month_list.dart';
import 'package:vocabulariocaspari/utilities/constants.dart';

class WordsCarrousel extends StatefulWidget {
  static String id = 'words';

  _WordsCarrouselState createState() => _WordsCarrouselState();
}

class _WordsCarrouselState extends State<WordsCarrousel> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  String myMonth = 'September';
  int _currentIndex = 0;

  void getScreenData() {
    ScreenArguments? arguments =
        ModalRoute.of(context)!.settings.arguments as ScreenArguments?;
    myMonth = arguments!.month;
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    getScreenData();
  }

  bottomNavigationActions() {
    if (_currentIndex == 0) {
      _controller.animateToPage(
        0,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    }
    if (_currentIndex == 1) {
      navigatetoIndex();
    }
    if (_currentIndex == 2) {
      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    }
  }

  navigatetoIndex() {
    Navigator.of(context).pushReplacementNamed(MonthList.id);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.teal,
          items: [
            BottomNavigationBarItem(
              label: 'Ir al inicio',
              icon: Icon(
                Icons.arrow_back,
                size: kBottomIconSize,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Indice',
              icon: Icon(
                Icons.home,
                size: kBottomIconSize,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Salir',
              icon: Icon(
                Icons.exit_to_app,
                size: kBottomIconSize,
              ),
            ),
          ],
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
              bottomNavigationActions();
            });
          },
        ),
        body: SafeArea(
          child: PageView(
            controller: _controller,
            children: returnList(month: myMonth),
          ),
        ),
      ),
    );
  }
}

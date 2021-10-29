import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vocabulariocaspari/screens/words_carrousel.dart';
import 'package:vocabulariocaspari/utilities/constants.dart';
import 'package:vocabulariocaspari/month_definitions.dart';

class MonthList extends StatefulWidget {
  static String id = 'months';
  _MonthListState createState() => _MonthListState();
}

navigateToPage(String month, BuildContext context) {
  Navigator.of(context).pushNamedAndRemoveUntil(
      WordsCarrousel.id, (Route<dynamic> route) => false,
      arguments: ScreenArguments(month: month));
}

class _MonthListState extends State<MonthList> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: SizedBox(
              height: k100Sizing,
              width: k100Sizing,
              child: FloatingActionButton(
                onPressed: () {
                  SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                },
                backgroundColor: kColor_Caspari,
                child: Icon(
                  Icons.exit_to_app,
                  size: k50Sizing,
                ),
              ),
            ),
            appBar: AppBar(
              toolbarHeight: k100Sizing,
              backgroundColor: kColor_Caspari,
              centerTitle: true,
              title: Text(
                'Vocabulario del mes',
                style: kMenuTitle,
              ),
            ),
            backgroundColor: Colors.lime,
            body: Padding(
              padding: const EdgeInsets.only(right: 50, left: 50, top: 50),
              child: ListView.builder(
                itemExtent: k100Sizing,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: monthArray.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: kColor_Caspari,
                    child: ListTile(
                      onTap: () {
                        navigateToPage(monthArray[index], context);
                      },
                      title: Center(
                        child: Text(
                          monthArray[index],
                          textAlign: TextAlign.center,
                          style: kTileText,
                        ),
                      ),
                    ),
                  );
                },
              ),
            )),
      ),
    );
  }
}

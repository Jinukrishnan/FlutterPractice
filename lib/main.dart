import 'package:flutter/material.dart';
import 'package:refactor/widgets/sportsBAnner.dart';

void main() {
  runApp(MaterialApp(
    home: Refactor(),
  ));
}

class Refactor extends StatelessWidget {
  Refactor({super.key});
  Widget divider = SizedBox(height: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('novavi'),
      ),
      body: ListView(
        children: [
          // Container(
          //   padding: EdgeInsets.all(20),
          //   decoration: BoxDecoration(color: Colors.green),
          //   child: ListTile(
          //     title: Text(
          //       'Scheduled matches',
          //       textAlign: TextAlign.center,
          //       style:
          //           TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          //     ),
          //     subtitle: sportsButton(
          //         text: 'view schedules',
          //         buttonAction: () {
          //           print('schedule page');
          //         }),
          //   ),
          // ),
          // divider,
          SportsBanner(
            bannerTitle: 'cricket matches',
            bannerText: 'view schedules',
            bannerColor: Colors.grey,
            buttonAction: () {
              print('cricket');
            },
          ),
          divider,
          SportsBanner(
            bannerTitle: 'football matches',
            bannerText: 'view schedules',
            bannerColor: Colors.orange,
            buttonAction: () {
              print('footbal');
            },
          ),
        ],
      ),
    );
  }
}

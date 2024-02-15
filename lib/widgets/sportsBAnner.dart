import 'package:flutter/material.dart';
import 'package:refactor/widgets/sportsButton.dart';

class SportsBanner extends StatelessWidget {
  final String? bannerTitle;
  final String? bannerText;
  final void Function()? buttonAction;
  final Color? bannerColor;
  const SportsBanner(
      {@required this.bannerText,
      @required this.bannerTitle,
      @required this.buttonAction,
      @required this.bannerColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(color: bannerColor),
      child: ListTile(
        title: Text(
          '$bannerTitle',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: sportsButton(text: '$bannerText', buttonAction: buttonAction),
      ),
    );
  }
}

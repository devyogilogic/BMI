import 'package:flutter/material.dart';
import '../constants/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {

  IconContent({this.icon,this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>
      [
        Icon(
          icon,
          size: 80.00,
        ),
        SizedBox(
          height:15.00 ,


        ),
        Text(label,style: kLabelTextStyle



        ),



      ],

    );
  }
}
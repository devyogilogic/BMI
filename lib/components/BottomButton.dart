import 'package:flutter/material.dart';
import '../constants/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonTitle,this.onTap});

  final String  buttonTitle;
  final  Function onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(buttonTitle,

          style: TextStyle(fontWeight: FontWeight.w900,
              fontSize: 24),
        ),
        ),
        color: kBottomCardColour,
        margin: EdgeInsets.only(top: 10.00),
        padding: EdgeInsets.only(bottom: 20.00),
        width: double.infinity,
        height: kBottomContainerHeight,

      ),
    );
  }
}
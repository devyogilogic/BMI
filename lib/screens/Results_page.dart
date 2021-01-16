import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../components/ReusableCard.dart';
import '../components/BottomButton.dart';
class ResultsPage extends StatelessWidget {
 ResultsPage({@required this.bmiResult,@required this.resultText,@required this.intepretation});
  final String  bmiResult;
  final String  resultText;
  final String intepretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("BMI CALCULATOR"),


    ),
    body:Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Container(
            alignment: Alignment.bottomLeft,

            padding: EdgeInsets.all(15),
            child: Text('Your Result',
            style: kTitleStyle,),
          ),


        ),
        Expanded(
          flex: 5,
          child: ReusableCard(colour: kActiveCardcolour,

          cardChild: Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            crossAxisAlignment: CrossAxisAlignment.center,
            children:  <Widget> [
              Text( resultText,
              style: kResultStyle,

              ),
              Text(bmiResult,
              style :kBMITextStyle),
              
              Text(intepretation,
                textAlign: TextAlign.center,
                style:kBodyTextStyle,


                ),




              
            ],

          ) ,

          ),


          
        ),
        BottomButton(buttonTitle: "RE-CALCULATE",onTap: ()=>Navigator.pop(context),)


      ],





    ),

    );
  }
}

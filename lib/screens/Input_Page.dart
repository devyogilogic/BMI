

import 'package:flutter/material.dart';
import '../components/IconContent.dart';
import '../components/ReusableCard.dart';
import '../constants/constants.dart';
import '../components/BottomButton.dart';
import '../components/RoundIconButton.dart';
import '../CalculatorBrain.dart';
import 'Results_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


enum Gender{
  male,
  felmale
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height=180;
  int weight=60;
  int age =20;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(children: <Widget> [
     Expanded(child: Row(
       children: <Widget> [
         Expanded(child: ReusableCard(
           onPress: (){

             setState(() {
               selectedGender=Gender.male;
             });
           },
           colour: selectedGender==Gender.male ? kActiveCardcolour: kInactiveCardcolour,
           cardChild: IconContent(icon: FontAwesomeIcons.mars,label: "MALE",),
         ),
         ),
         Expanded(child: ReusableCard(
           onPress: () {
             setState(() {
               selectedGender=Gender.felmale;
             });



    }
           ,

           colour: selectedGender==Gender.felmale ? kActiveCardcolour: kInactiveCardcolour,
           cardChild:  IconContent(icon: FontAwesomeIcons.venus,label: "FEMALE",),),
         ),




       ],
     ),
     ),
        Expanded(child:
    Row(

           children: <Widget> [
         Expanded(child: ReusableCard(
           colour: kActiveCardcolour,
         cardChild: Column(
           mainAxisAlignment: MainAxisAlignment.center,



           children: <Widget> [
             Text(
    'HEIGHT',
    style: kLabelTextStyle,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
    textBaseline: TextBaseline.alphabetic,

    children: <Widget>[
      Text(
    height.toString(),
    style: kTextNumberStyle
    ),
      Text(
          'cm',
          style: kLabelTextStyle
      ),


    ],
    ),
             SliderTheme(
               data: SliderTheme.of(context).copyWith(
                 inactiveTrackColor:Color(0xFF8D8E98) ,
                 thumbColor: Color(0xFFEB1555),
activeTrackColor: Colors.white,
overlayColor:Color(0x29EB1555) ,
thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.00),
                 overlayShape: RoundSliderOverlayShape(overlayRadius: 30)


               ),
               child: Slider(

                 value: height.toDouble(),
                 min: 120,
                 max: 220,
                 onChanged: (double newvalue) {
                   setState(() {
                     height=newvalue.round();
                   });

                 },


               ),
             )



           ],
         )




         ,
         ),

    )]
       ),
     ) ,
     Expanded(child: Row(
       children: <Widget> [
         Expanded(child:  ReusableCard(colour: kActiveCardcolour,
           cardChild: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[


               Text("WEIGHT",

               style: kLabelTextStyle,
               ),
Text(

  weight.toString(),
  style: kTextNumberStyle,


),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                  RoundIconButton(icon: FontAwesomeIcons.minus,onPressed: () {
                    setState(() {
                      weight--;
                    });
                  },),

                   SizedBox(width: 10.00,),

                   RoundIconButton(icon: FontAwesomeIcons.plus,onPressed: () {
                    setState(() {
                      weight ++;
                    });

                   },)
                 ],
               )
             ],


           ),


         ),
         ),
         Expanded(child:  ReusableCard(colour: kActiveCardcolour,


           cardChild: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[


               Text("Age",

                 style: kLabelTextStyle,
               ),
               Text(

                 age.toString(),
                 style: kTextNumberStyle,


               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   RoundIconButton(icon: FontAwesomeIcons.minus,onPressed: () {
                     setState(() {
                       age--;
                     });
                   },),

                   SizedBox(width: 10.00,),

                   RoundIconButton(icon: FontAwesomeIcons.plus,onPressed: () {
                     setState(() {
                       age ++;
                     });

                   },)
                 ],
               )
             ],


           ),



         ),
    ),

       ],
     ),),


     BottomButton(buttonTitle: "CALCULATE",onTap: (){

       CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);

       Navigator.push(context,MaterialPageRoute(builder: (context)=>ResultsPage(

         bmiResult: calc.calculateBMI(),
         resultText: calc.getResults() ,
         intepretation:  calc.getInterpretation(),


       )));



     },)
        ],
      )

    );
  }
}








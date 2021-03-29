import 'package:flutter/material.dart';
import 'package:instagram_harshtag/utils/colors.dart';



class Harshtag {
   String comments, imagetext;
  String buttontext;
  Color buttocolor;
  Color textcolor;

  Harshtag({this.buttocolor,this.textcolor, this.imagetext, this.buttontext, this.comments});


}


List<Harshtag> harshtag = [
  Harshtag(
// '#fashion', '#Style', '#Model', '#Shopping', '#dress', '#shoes', '#fashionate', '#outfit', '#stylish',
    comments: 
'#fashion' '#Style' '#Model' '#Shopping' '#dress' '#shoes' '#fashionate' '#outfit' '#stylish',

    buttontext: 'FASHION',
    buttocolor: Colors.purple[50],
    textcolor: deeppurplecolor,
    imagetext: 'KOPYALA'
    
  ),
   Harshtag(
    comments: 
'#fashion' '#Style' '#Model' '#Shopping' '#dress' '#shoes' '#fashionate' '#outfit' '#stylish',

    buttontext: 'PHOGRAPHYTO',
    buttocolor: Colors.purple[50],
    textcolor: Colors.yellow,
    imagetext: 'KOPYALA'

  ),
   Harshtag(
    comments: 
'#fashion' '#Style' '#Model' '#Shopping' '#dress' '#shoes' '#fashionate' '#outfit' '#stylish',

    buttontext: 'FITNESS',
    buttocolor: Colors.lightBlue[50],
    textcolor: Colors.blue,
    imagetext: 'KOPYALA'

  ),
   Harshtag(
    comments: 
'#fashion' '#Style' '#Model' '#Shopping' '#dress' '#shoes' '#fashionate' '#outfit' '#stylish',

    buttontext: 'LIFESTYLE',
    textcolor: Colors.green,
    buttocolor: Colors.green[100],
    imagetext: 'KOPYALA'

    
  ),

];
//********** THIS FILE CONTAIN TEXT Style*/
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learnmobile/styles/AppFontSizes.dart';

class AppTextStyle{

  static TextStyle header1(BuildContext context, Color color) {
    return GoogleFonts.alef(
      fontSize: AppFontSizes.largest,
     textStyle: 
    TextStyle(
        color: color));
  }

  static TextStyle header1Bold(BuildContext context, Color color) {
    return GoogleFonts.alef(
      fontSize: AppFontSizes.largest,
     textStyle: 
    TextStyle(
        color: color,
        fontWeight: FontWeight.bold));
  }
  static TextStyle header1BoldSmall(BuildContext context, Color color) {
    return GoogleFonts.alef(
      fontSize: AppFontSizes.large,
     textStyle: 
    TextStyle(
        color: color,
        fontWeight: FontWeight.bold));
  }
  static TextStyle header2Bold(BuildContext context, Color color) {
    return GoogleFonts.alef(
      fontSize: AppFontSizes.large2_1,
     textStyle: 
    TextStyle(
        color: color,
        fontWeight: FontWeight.bold));
  }

  static TextStyle header2(BuildContext context, Color color) {
    return GoogleFonts.alef(
      fontSize: AppFontSizes.larger,
     textStyle: 
    TextStyle(
        color: color));
  }
        static TextStyle header3(BuildContext context, Color color) {
    return GoogleFonts.alef(
      fontSize: AppFontSizes.large,
       fontWeight: FontWeight.bold,
     textStyle: 
    TextStyle(
        color: color));
  }


   static TextStyle header4(BuildContext context, Color color) {
    return GoogleFonts.alef(
      fontSize: AppFontSizes.large2,
     textStyle: 
    TextStyle(
        color: color));
   }
    static TextStyle header4bold(BuildContext context, Color color) {
    return GoogleFonts.alef(
      fontSize: AppFontSizes.large2,
     textStyle: 
    TextStyle(
      fontWeight: FontWeight.bold,
        color: color));
   }
   static TextStyle wallectB(BuildContext context, Color color) {
    return GoogleFonts.alef(
      fontSize: AppFontSizes.large,
     textStyle: 
    TextStyle(
      fontWeight: FontWeight.bold,
        color: color));
   }

    static TextStyle wallectBSmall(BuildContext context, Color color) {
    return GoogleFonts.alef(
      fontSize: AppFontSizes.small,
     textStyle: 
    TextStyle(
      fontWeight: FontWeight.bold,
        color: color));
   }
   static TextStyle sub(BuildContext context, Color color) {
    // return TextStyle(
    //       fontFamily: "Plak W01 Black Condensed",
    //       fontSize: AppFontSizes.large,
    // );
     return GoogleFonts.adamina(//aBeeZee
      fontSize: AppFontSizes.smallest,
     textStyle: 
    TextStyle(
        color: color,));
   }

    static TextStyle tabs(BuildContext context, Color color) {
    // return TextStyle(
    //       fontFamily: "Plak W01 Black Condensed",
    //       fontSize: AppFontSizes.large,
    // );
     return GoogleFonts.adamina(//aBeeZee
      fontSize: AppFontSizes.smallest,
     textStyle: 
    TextStyle(
        color: color,));
   }

  
   static TextStyle header4Bold(BuildContext context, Color color) {
    return GoogleFonts.quintessential( //aBeeZee
      fontSize: AppFontSizes.large2_1,
     textStyle: 
    TextStyle(
        color: color,
        fontWeight: FontWeight.bold));
   }
    static TextStyle header5(BuildContext context, Color color) {
    return GoogleFonts.alef(
      fontSize: AppFontSizes.medium,
     textStyle: 
    TextStyle(
        color: color));
        
   }
   static TextStyle sty(BuildContext context, Color color) {
    return GoogleFonts.aBeeZee(
      fontSize: AppFontSizes.large,
     textStyle: TextStyle(
        color: color));
   }

   static TextStyle balace(BuildContext context, Color color) {
    return GoogleFonts.aBeeZee(
      fontSize: AppFontSizes.largest,
     textStyle: 
    TextStyle(
        color: color, fontWeight: FontWeight.bold));
   }

   static TextStyle balaceLarge(BuildContext context, Color color) {
    return GoogleFonts.aBeeZee(
      fontSize: AppFontSizes.large,
     textStyle: 
    TextStyle(
        color: color, fontWeight: FontWeight.bold));
   }
        static TextStyle subHeader1(BuildContext context, Color color) {
    return GoogleFonts.notoSans(
      fontSize: AppFontSizes.medium,
     textStyle: TextStyle(
        color: color));
  }

   static TextStyle inputText(BuildContext context) {
    return GoogleFonts.aBeeZee(
      fontSize: AppFontSizes.small,
     textStyle: TextStyle(
        color: Colors.black));
  }
  
   static TextStyle inputTextWColor(BuildContext context, Color color) {
    return GoogleFonts.aBeeZee(
      fontSize: AppFontSizes.small,
     textStyle: TextStyle(
        color: color));
  }
  static TextStyle inputTextDecreaced(BuildContext context) {
    return GoogleFonts.aBeeZee(
      fontSize: AppFontSizes.smallest,
     textStyle: TextStyle(
        color: Colors.black));
  }
  static TextStyle inputTextIncrease(BuildContext context) {
    return GoogleFonts.aBeeZee(
      fontSize: AppFontSizes.large,
     textStyle: TextStyle(
        color: Colors.black));
  }

static TextStyle subHeader2(BuildContext context, Color color) {
    return GoogleFonts.alef(
      fontSize: AppFontSizes.small,
     textStyle: 
    TextStyle(
        color: color));
  }

  static TextStyle sellheader(BuildContext context, Color color) {
    return GoogleFonts.spinnaker(
      fontSize: AppFontSizes.smallest,
     textStyle: 
    TextStyle(
        color: color));
  }

static TextStyle subheader3(BuildContext context, Color color) {
    return GoogleFonts.alef(
      fontSize: AppFontSizes.smallest,
     textStyle: 
    TextStyle(
        color: color));
  }
 
  static TextStyle subheader3Bold(BuildContext context, Color color) {
    return GoogleFonts.alef(
      fontSize: AppFontSizes.smallest,
     textStyle: 
    TextStyle(
      fontWeight: FontWeight.bold,
        color: color));
  }

   static TextStyle h(BuildContext context, Color color) {
    return GoogleFonts.quintessential( //aBeeZee
      fontSize: AppFontSizes.large2,
     textStyle: 
    TextStyle(
        color: color,
        fontWeight: FontWeight.bold));
   }

}
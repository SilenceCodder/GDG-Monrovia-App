import 'package:flutter/material.dart';
import 'package:learnmobile/Screen/DashboardScreen.dart';
import 'package:learnmobile/styles/AppColor.dart';
import 'package:learnmobile/styles/AppImage.dart';
import 'package:nice_intro/nice_intro.dart';

class OnboardScreen extends StatefulWidget {
  @override
  _OnboardScreenState createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
 @override
  Widget build(BuildContext context) {
    var screens = IntroScreens(
      onDone: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => DasboardScreen(), //Move to Dashboard.
        ),
      ),
      onSkip: () => print('Skipping the intro slides'),
      footerBgColor:  AppColor.primaryLightDark, //AppColor.primary,
      activeDotColor: Colors.white,
      footerRadius: 18.0,
//      indicatorType: IndicatorType.CIRCLE,
      slides: [
        IntroScreen(
          title: 'Learn',
          imageAsset: AppImage.board3,
          description: 'Learn Mobile Development in Flutter',
          headerBgColor: Colors.white,
         // textStyle: AppTextStyle.header1(context, Colors.white),
        ),
        IntroScreen(
          title: 'Experience',
          headerBgColor: Colors.white,
           imageAsset: AppImage.board1,
          description: "Experience other Mobile Apps and build yours",
        ),
        IntroScreen(
          title: 'Goal',
          headerBgColor: Colors.white,
          imageAsset: AppImage.board2,
          description: "Reach your goal and become a champion in coding with GDG Monrovia",
        ),
      ],
    );

    return Scaffold(
      body: screens,
    );
  }
}


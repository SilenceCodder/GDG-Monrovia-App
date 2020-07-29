import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kenburns/kenburns.dart';
import 'package:learnmobile/Screen/WebScreen.dart';
import 'package:learnmobile/styles/AppColor.dart';
import 'package:learnmobile/styles/AppImage.dart';
import 'package:learnmobile/styles/AppTextStyle.dart';
import 'package:shape_of_view/shape_of_view.dart';

class DasboardScreen extends StatefulWidget {
  @override
  _DasboardScreenState createState() => _DasboardScreenState();
}

class _DasboardScreenState extends State<DasboardScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(children: <Widget>[
Stack(
      children: <Widget>[
        ShapeOfView(
          height: 200,
  shape: ArcShape(
    direction: ArcDirection.Outside,
    height: 40,
    position: ArcPosition.Bottom
  ),
  child: Stack(children: <Widget>[
    KenBurns(
                maxScale: 5,
                child:Image.asset(
                AppImage.background,
                  fit: BoxFit.cover,
                ),
              ),

              Positioned(
                top: 35,
             child: Padding(
      padding: EdgeInsets.only(right: 15, left: 10),
      child: Icon(Icons.menu, color: Colors.white, size: 30,),
    ),
              ),

               Positioned(
                top: 35,
                left: 310,
                right: 40,
             child: Padding(
      padding: EdgeInsets.only(right: 15, left: 10),
      child: Icon(FontAwesomeIcons.user, color: Colors.white, size: 30,),
    ),
              ),

    
    Column(children: <Widget>[
      Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: Center(
                      child: Text(
                        "GDG Monrovia",
                        style: AppTextStyle.header1Bold(context, Colors.white)
                      ),
                    ),
                  ),
    ],),
    
  ],)
),
    ],),

    Padding(
      padding: const EdgeInsets.only(top: 15,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
         GestureDetector(child:  cards('Home', FontAwesomeIcons.home),
         onTap: (){
            Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WebScreen(
          title: 'Home',
          url: 'https://gdg.community.dev/events/details/google-gdg-monrovia-presents-flutter-boot-camp-for-newbies/',
        )));
         },),
         
           cards('Facebook', FontAwesomeIcons.facebook),
            cards('Twitter', FontAwesomeIcons.twitter),
             cards('LinkedIn', FontAwesomeIcons.linkedin),
      ],),
    ),
      ],));
  }

cards(String value, IconData icon){
  return   Container(
                margin: EdgeInsets.only(left: 14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Material(
                        elevation: 5,
                        shape: CircleBorder(),
                        shadowColor: AppColor.primary, 
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: AppColor.primary,
                            shape: BoxShape.circle,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Icon(
                              icon,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(value,
                        style: AppTextStyle.subheader3(context, Colors.black))
                  ],
                ),
              );
}


}
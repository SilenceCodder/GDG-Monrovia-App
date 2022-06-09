import 'package:flutter/material.dart';
import 'package:learnmobile/Screen/OnboardScreen.dart';
import 'package:learnmobile/scheduleNotification.dart';
import 'package:timezone/data/latest_all.dart' as tz;

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    tz.initializeTimeZones();
    NotificationService().initNotification();
    showNotification();
    super.initState();
  }

  showNotification() async {
    await Future.delayed(Duration(seconds: 2));
    NotificationService()
        .showNotification(1001, "This is title", "the body of the message");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learn Mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: OnboardScreen(),
    );
  }
}

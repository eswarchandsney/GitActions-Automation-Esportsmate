import 'package:esportsmate/screens/mentorship.dart';
import 'package:esportsmate/screens/profile.dart';
import 'package:esportsmate/screens/tournaments.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'firebase_options.dart';
import 'screens/homepage.dart';
import 'screens/notification.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(
    Duration(seconds: 0),
  );
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes:{
        '/':(content)=>Homepage(),
        '/profile':(content)=>Profile(),
        '/notification':(content)=>NotificationPage(),
        '/tournament':(content)=>TournamentsPage(),
        '/mentor':(content)=>MentorshipPage(),
      },
    );
  }
}

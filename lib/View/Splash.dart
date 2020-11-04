import 'dart:async';
import 'package:dating_app_stage2/View/MakeProfile/Age.dart';
import 'package:dating_app_stage2/View/MakeProfile/Name.dart';
import 'package:dating_app_stage2/View/MakeProfile/Pics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'Authentication.dart';
import 'Camera.dart';

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => SplashScreen(),
      '/main': (context) => MyApp(),
      '/name': (context) => Name(),
      '/age': (context) => Age(),
      '/pic': (context) => Pics(),
      //'/profiledetail': (context) => ProfilePage(),
      //'/profile': (context) => Profile(),
      //'/likes': (context) => Likes(),
      '/signin': (context) => SignInPage(),
      '/camera': (context) => OpenCamera(),
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final mUser = FirebaseAuth.instance.currentUser;
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => mUser != null
            ? Navigator.pushNamed(context, '/name')
            : Navigator.pushNamed(context, '/signin'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('images/b.jpg'),
      ),
    );
  }
}


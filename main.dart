import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:quiz_app/firebase_options.dart';
import 'package:quiz_app/screen/home.dart';
import 'package:quiz_app/screen/login.dart';
import 'package:quiz_app/screen/loser.dart';
import 'package:quiz_app/screen/profile.dart';
import 'package:quiz_app/screen/question.dart';
import 'package:quiz_app/screen/quizintro.dart';
import 'package:quiz_app/screen/win.dart';
import 'package:quiz_app/services/localdb.dart';
import 'package:quiz_app/widgets/lifeline_sidebar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLogIn = false;

  getLoggedInState() async {
    await LocalDB.getuserID().then((value) {
      setState(() {
        isLogIn = value.toString() != "null";
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getLoggedInState();
  }

  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'KBC Quiz',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: isLogIn ? Home() : Login(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:initial/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Firebase Connection...",
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  colors: [Colors.orange.shade900, Colors.orange.shade400])),
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.20, left: 40),
                alignment: Alignment.bottomLeft,
                child: const Column(children: [
                  Text(
                    "Login.....",
                    style: TextStyle(fontSize: 50, color: Colors.white),
                  ),
                  Text(
                    "Welcome Back...",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ]),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.35),
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height * 0.65,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(80),
                        topRight: Radius.circular(80))),
              ),
            ],
          )),
    );
  }
}

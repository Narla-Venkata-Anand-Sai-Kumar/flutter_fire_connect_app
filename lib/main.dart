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
        decoration: const BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft, colors: [
            Color.fromARGB(255, 217, 106, 46),
            Color.fromARGB(255, 177, 123, 42),
          ]),
        ),
        child: ListView(children: [
          const HeadText(text: "Login...", a: 1),
          const HeadText(text: "Welcome Back...", a: 0),
          Container(
              margin: const EdgeInsets.only(top: 20),
              height: MediaQuery.of(context).size.height * 0.63,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(65),
                    topRight: Radius.circular(65)),
                boxShadow: [
                  BoxShadow(
                    color:
                        const Color.fromARGB(255, 86, 84, 81).withOpacity(0.2),
                    spreadRadius: 9,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  )
                ],
              ),
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        top: 70, bottom: 30, left: 40, right: 40),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 222, 138, 13)
                                .withOpacity(0.2),
                            spreadRadius: 9,
                            blurRadius: 7,
                            offset: const Offset(0, 6),
                          )
                        ]),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.email),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 2,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.lock),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ]),
      ),
    );
  }
}

class HeadText extends StatelessWidget {
  final String text;
  final int a;
  const HeadText({required this.text, required this.a, super.key});

  Container settext(BuildContext context) {
    if (a == 1) {
      return Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.only(top: 170, left: 20),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 55,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      );
    } else {
      return Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.only(top: 25, left: 20),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return settext(context);
  }
}

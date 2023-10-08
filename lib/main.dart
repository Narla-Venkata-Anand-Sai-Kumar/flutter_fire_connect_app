import 'package:flutter/material.dart';
import 'package:initial/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:social_media_buttons/social_media_button.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Firebase Connection...",
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});

  final _username = TextEditingController();
  final _password = TextEditingController();

  void validate(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          title: Container(
              alignment: Alignment.center,
              child:
                  const Text('Login Successful', style: TextStyle(fontSize: 20.0))),
          actions: <Widget>[
            const Divider(thickness: 3,),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text("OK!..",style: TextStyle(color: Colors.blue.shade400,fontSize: 20)),
              ),
            )
          ],
          backgroundColor: Colors.white, // Set the background color
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft, colors: [
            Color.fromARGB(255, 239, 142, 15),
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
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 10),
                          child: TextField(
                            controller: _username,
                            decoration: const InputDecoration(
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
                        const Divider(
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 20),
                          child: TextField(
                            controller: _password,
                            decoration: const InputDecoration(
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
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange.shade400),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      validate(context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(
                          top: 20, left: 40, right: 40, bottom: 20),
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.orange.shade400,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 222, 138, 13)
                                .withOpacity(0.2),
                            spreadRadius: 9,
                            blurRadius: 7,
                            offset: const Offset(0, 6),
                          )
                        ],
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.only(
                            top: 20, left: 40, right: 40, bottom: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 222, 138, 13)
                                  .withOpacity(0.2),
                              spreadRadius: 9,
                              blurRadius: 7,
                              offset: const Offset(0, 6),
                            )
                          ],
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            SocialMediaButton.google(
                              onTap: () {},
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Sign in with Google",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange.shade400,
                              ),
                            ),
                          ],
                        ),
                      ))
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

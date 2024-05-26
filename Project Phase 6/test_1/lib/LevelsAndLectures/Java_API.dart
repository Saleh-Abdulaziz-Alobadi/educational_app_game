import 'package:flutter/material.dart';
import 'package:test_1/screens/quiz_screen.dart';
import 'package:test_1/homepage.dart';
import 'package:audioplayers/audioplayers.dart';

class Java_API extends StatefulWidget {
  Java_API({
    required this.levelcontroller,
    required this.lecturecontroller,
  });

  int levelcontroller;
  int lecturecontroller;

  @override
  State<Java_API> createState() => _ForgetPasswordState(
      levelcontroller: levelcontroller, lecturecontroller: lecturecontroller);
}

class _ForgetPasswordState extends State<Java_API> {
  _ForgetPasswordState({
    required this.levelcontroller,
    required this.lecturecontroller,
  });

  int levelcontroller;
  int lecturecontroller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: const Text(
            "Java APIs",
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
              color: Color.fromRGBO(255, 255, 255, 0.8),
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue.shade900,
                Colors.blue.shade100,
              ],
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: Text("What is Java API?",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontFamily: "serif")),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "In Java, an API (Application Programming Interface) refers to a set of classes, interfaces, methods, and other components that provide a predefined functionality for developers to use in their programs. The Java API is a vast collection of packages and classes that form the core library of Java, offering a wide range of features for building various types of applications. Java APIs is Rich collections of existing classes and methods",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: "serif"),
                  ),
                ),
                MaterialButton(
                  elevation: 5.0,
                  color: Colors.indigoAccent, //backgroun Login
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                  child: GestureDetector(
                    onTap: () {
                      playSound();
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return QuizScreen(
                          levelcontroller: levelcontroller,
                          lecturecontroller: lecturecontroller,
                        );
                      }));
                    },
                    child: const Text(
                      'Quiz',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  shape: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(20), // radius of login feld
                    borderSide: BorderSide.none,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ));
    //maxlines:3,
    // text rich+children+text span
  }
  Future<void> playSound() async {
    final player = AudioPlayer();
    String audioPath = "audio/sound.mp3";
    await player.play(AssetSource(audioPath));
  }
}

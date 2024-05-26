import 'package:flutter/material.dart';
import 'package:test_1/screens/quiz_screen.dart';
import 'package:test_1/homepage.dart';
import 'package:audioplayers/audioplayers.dart';

class Inheritance extends StatefulWidget {
  Inheritance({
    required this.levelcontroller,
    required this.lecturecontroller,
  });

  int levelcontroller;
  int lecturecontroller;

  @override
  State<Inheritance> createState() => _ForgetPasswordState(
      levelcontroller: levelcontroller, lecturecontroller: lecturecontroller);
}

class _ForgetPasswordState extends State<Inheritance> {
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
            "Inheritance",
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
                  padding: const EdgeInsets.all(40),
                  child: Text("What is Inheritance?",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontFamily: "serif")),
                ),
                Padding(
                  padding: const EdgeInsets.all(7),
                  child: Text(
                    "Inheritance is a fundamental concept in object-oriented programming (OOP) that allows a class to inherit properties and behaviors from another class. The class that is being inherited from is called the superclass or parent class, and the class that inherits is called the subclass or child class. Inheritance provides a mechanism for code reuse and helps in creating a hierarchy of classes with shared characteristics. The keyword that used to denote inheritance is extends. a subclass cannot access private members of its superclass.",
                    style: TextStyle(
                        fontSize: 19,
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

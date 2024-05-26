import 'package:flutter/material.dart';
import 'package:test_1/screens/quiz_screen.dart';
import 'package:test_1/homepage.dart';
import 'package:audioplayers/audioplayers.dart';

class while_loop extends StatefulWidget {
  while_loop({
    required this.levelcontroller,
    required this.lecturecontroller,
  });

  int levelcontroller;
  int lecturecontroller;

  @override
  State<while_loop> createState() => _ForgetPasswordState(
      levelcontroller: levelcontroller, lecturecontroller: lecturecontroller);
}

class _ForgetPasswordState extends State<while_loop> {
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
            "while loop",
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
                  child: Text("while loop in java",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontFamily: "serif")),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    "The while loop in Java is a control flow statement that allows you to repeatedly execute a block of code as long as a specified condition is true. It is useful when the number of iterations is not known in advance or when you want to continue iterating based on a certain condition. The format for while loop is: initialization; => while(condition){increment}",
                    style: TextStyle(
                        fontSize: 23,
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

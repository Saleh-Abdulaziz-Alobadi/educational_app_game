import 'package:flutter/material.dart';
import 'package:test_1/screens/quiz_screen.dart';
import 'package:test_1/homepage.dart';
import 'package:audioplayers/audioplayers.dart';

class if_statement extends StatefulWidget {
  if_statement({
    required this.levelcontroller,
    required this.lecturecontroller,
  });

  int levelcontroller;
  int lecturecontroller;

  @override
  State<if_statement> createState() => _ForgetPasswordState(
      levelcontroller: levelcontroller, lecturecontroller: lecturecontroller);
}

class _ForgetPasswordState extends State<if_statement> {
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
            "if statement",
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
                  child: Text("if statement in Java",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontFamily: "serif")),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "if selection statement: Allows a program to make a decision based on a condition’s value. Type of the if statement is Boolean. An if statement always begins with keyword if, followed by acondition in parentheses. Condition: An expression that can be true or false. Example: if ( studentGrade >= 60 ) => System.out.println( Passed );",
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

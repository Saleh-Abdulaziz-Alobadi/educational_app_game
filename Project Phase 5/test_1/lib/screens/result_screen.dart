import 'package:flutter/material.dart';
import 'package:test_1/homepage.dart';
import '../models/questions.dart';
import '/screens/quiz_screen.dart';
import '/widgets/next_button.dart';
import 'package:audioplayers/audioplayers.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({
    super.key,
    required this.score,
    required this.levelcontroller,
    required this.lecturecontroller,
  });

  final int score;
  int levelcontroller;
  int lecturecontroller;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {

        Future<void> playSound() async {
          final player = AudioPlayer();
          String audioPath = "audio/sound.mp3";
          await player.play(AssetSource(audioPath));
        }
        Future<void> playSound1() async {
          final player = AudioPlayer();
          String audioPath = "audio/sound1.mp3";
          await player.play(AssetSource(audioPath));
        }

        playSound1();

        return Scaffold(

          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(width: 1000),
              const Text(
                'Your Score: ',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 300,
                    width: 300,
                    child: CircularProgressIndicator(
                      strokeWidth: 10,
                      value: score / 4,
                      color: Colors.green,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      // if(score.round()==1)Text('${score.round()} Correct answer', style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      Text(
                        '${score.round()} Correct answers',
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '${(((score * 3) - ((questions1.length - score) * 3))).round()} points',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),


                      MaterialButton(
                        elevation: 5.0,
                        color: Colors.blue, //backgroun Login
                        padding:
                        const EdgeInsets.symmetric(vertical: 7, horizontal: 30),
                        child: GestureDetector(
                          onTap: () {
                            playSound();
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return HomePage();
                            }));
                          },
                          child: const Text(
                            'Next Lesson',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        shape: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(30), // radius of login feld
                          borderSide: BorderSide.none,
                        ),
                        onPressed: () {},
                      ),
                      MaterialButton(
                        elevation: 5.0,
                        color: Colors.blue, //backgroun Login
                        padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
                            'Try again',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        shape: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(30), // radius of login feld
                          borderSide: BorderSide.none,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ],

          ),
        );
      },
    );
  }
}
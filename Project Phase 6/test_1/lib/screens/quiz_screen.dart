import 'package:flutter/material.dart';
import '../models/questions.dart';
import '/screens/result_screen.dart';
import '/widgets/answer_card.dart';
import '/widgets/next_button.dart';
import 'package:audioplayers/audioplayers.dart';
class QuizScreen extends StatefulWidget {
  QuizScreen({
    super.key,
    required this.levelcontroller,
    required this.lecturecontroller,
  });

  int levelcontroller;
  int lecturecontroller;

  @override

  State<QuizScreen> createState() => _QuizScreenState(
      levelcontroller: levelcontroller, lecturecontroller: lecturecontroller);
}

class _QuizScreenState extends State<QuizScreen> {
  _QuizScreenState({
    required this.levelcontroller,
    required this.lecturecontroller,
  });

  int levelcontroller;
  int lecturecontroller;

  int? selectedAnswerIndex;
  int questionIndex = 0;
  int score = 0;




  void pickAnswer(int value) {
    selectedAnswerIndex = value;
    final question =
        questions1[levelcontroller][lecturecontroller][questionIndex];
    if (selectedAnswerIndex == question.correctAnswerIndex) {
      score++;
    }
    setState(() {});
  }

  void goToNextQuestion() {
    if (questionIndex <
        questions1[levelcontroller][lecturecontroller].length - 1) {
      questionIndex++;
      selectedAnswerIndex = null;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final question =
        questions1[levelcontroller][lecturecontroller][questionIndex];
    bool isLastQuestion = questionIndex ==
        questions1[levelcontroller][lecturecontroller].length - 1;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          'Quiz',
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
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              question.question,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: question.options.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: selectedAnswerIndex == null
                      ? () {
                    playSound();
                    pickAnswer(index);
                  }
                      : null,
                  child: AnswerCard(
                    currentIndex: index,
                    question: question.options[index],
                    isSelected: selectedAnswerIndex == index,
                    selectedAnswerIndex: selectedAnswerIndex,
                    correctAnswerIndex: question.correctAnswerIndex,
                  ),
                );
              },
            ),
            // Next Button
            isLastQuestion
                ? RectangularButton(
                    onPressed: () {
                      playSound();
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => ResultScreen(
                            score: score,
                            levelcontroller: levelcontroller,
                            lecturecontroller: lecturecontroller,
                          ),
                        ),
                      );
                    },
                    label: 'Finish',
                  )
                : RectangularButton(
              onPressed: selectedAnswerIndex != null
                  ? () {
                playSound();
                goToNextQuestion();
              }
                  : null,
              label: 'Next',
            )

          ],
        ),
      ),
    );
  }
  Future<void> playSound() async {
    final player = AudioPlayer();
    String audioPath = "audio/sound.mp3";
    await player.play(AssetSource(audioPath));
  }
  Future<void> playSound1() async {
    final player = AudioPlayer();
    String audioPath = "audio/sound3.wav";
    await player.play(AssetSource(audioPath));
  }

}

// homepage.dart
import 'package:flutter/material.dart';
import 'package:test_1/LevelsAndLectures/Java_IDEs.dart';
import 'package:test_1/LevelsAndLectures/Java_API.dart';
import 'package:test_1/LevelsAndLectures/introduction.dart';
import 'package:audioplayers/audioplayers.dart';

class level1 extends StatelessWidget {
  level1({
    required this.levelcontroller,
    required this.lecturecontroller,
  });

  int levelcontroller;
  int lecturecontroller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.search, color: Colors.blue),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.school_rounded, color: Colors.blue),
            label: "Learn",
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Level 1",
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
            color: Color.fromRGBO(255, 255, 255, 0.8),
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            MaterialButton(
              elevation: 5,
              color: Colors.white, //backgroun Login
              padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
              child: GestureDetector(
                onTap: () {
                  playSound();
                  lecturecontroller = 0;
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return introduction(
                      levelcontroller: levelcontroller,
                      lecturecontroller: lecturecontroller,
                    );
                  }));
                },
                child: Center(
                  child: const Text(
                    'Java Introduction',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15), // radius of login feld
                borderSide: BorderSide.none,
              ),
              onPressed: () {},
            ),
            MaterialButton(
              elevation: 5,
              color: Colors.white, //backgroun Login
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 90),
              child: GestureDetector(
                onTap: () {
                  playSound();
                  lecturecontroller = 1;
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Java_API(
                      levelcontroller: levelcontroller,
                      lecturecontroller: lecturecontroller,
                    );
                  }));
                },
                child: Center(
                  child: const Text(
                    'Java API',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15), // radius of login feld
                borderSide: BorderSide.none,
              ),
              onPressed: () {},
            ),
            MaterialButton(
              elevation: 5,
              color: Colors.white, //backgroun Login
              padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
              child: GestureDetector(
                onTap: () {
                  playSound();
                  lecturecontroller = 2;
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Java_IDEs(
                      levelcontroller: levelcontroller,
                      lecturecontroller: lecturecontroller,
                    );
                  }));
                },
                child: Center(
                  child: const Text(
                    'popular Java IDEs',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15), // radius of login feld
                borderSide: BorderSide.none,
              ),
              onPressed: () {},
            ),
            const SizedBox(height: 16)
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
}

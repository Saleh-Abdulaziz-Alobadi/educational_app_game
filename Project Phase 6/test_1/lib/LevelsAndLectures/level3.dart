// homepage.dart
import 'package:flutter/material.dart';
import 'package:test_1/LevelsAndLectures/Inheritance.dart';
import 'package:test_1/LevelsAndLectures/Polymorphism.dart';
import 'package:test_1/LevelsAndLectures/classes.dart';
import 'package:audioplayers/audioplayers.dart';

class level3 extends StatelessWidget {
  level3({
    required this.levelcontroller,
    required this.lecturecontroller,
  });

  int levelcontroller;
  int lecturecontroller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Colors.blue.shade100,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.school_rounded, color: Colors.indigo),
            label: "Learn",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.search, color: Colors.indigo),
            label: "Search",
          ),
        ],
        selectedItemColor: Colors.black, // Change the selected item color
        unselectedItemColor: Colors.black,
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          "Level 3",
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
            color: Colors.red,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            MaterialButton(
              elevation: 5,
              color: Colors.red, //backgroun Login
              padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
              child: GestureDetector(
                onTap: () {
                  playSound();
                  lecturecontroller = 0;
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return classes(
                      levelcontroller: levelcontroller,
                      lecturecontroller: lecturecontroller,
                    );
                  }));
                },
                child: Center(
                  child: const Text(
                    'classes',
                    style: TextStyle(
                      color: Colors.white70,
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
              color: Colors.red, //backgroun Login
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 90),
              child: GestureDetector(
                onTap: () {
                  playSound();
                  lecturecontroller = 1;
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Inheritance(
                      levelcontroller: levelcontroller,
                      lecturecontroller: lecturecontroller,
                    );
                  }));
                },
                child: Center(
                  child: const Text(
                    'Inheritance',
                    style: TextStyle(
                      color: Colors.white70,
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
              color: Colors.red, //backgroun Login
              padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
              child: GestureDetector(
                onTap: () {
                  playSound();
                  lecturecontroller = 2;
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Polymorphism(
                      levelcontroller: levelcontroller,
                      lecturecontroller: lecturecontroller,
                    );
                  }));
                },
                child: Center(
                  child: const Text(
                    'Polymorphism',
                    style: TextStyle(
                      color: Colors.white70,
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

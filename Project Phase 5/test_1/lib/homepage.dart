import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:test_1/LevelsAndLectures/level1.dart';
import 'package:test_1/LevelsAndLectures/level2.dart';
import 'package:test_1/LevelsAndLectures/level3.dart';
import 'package:test_1/models/levelcontroller.dart';
import 'package:test_1/profile.dart';
import 'package:test_1/setting_menu.dart';
import 'package:test_1/screens/result_screen.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final levelcontroller quizController =
      Get.put(levelcontroller(), permanent: true);

  @override
  Widget build(BuildContext context) {
    quizController.levelindex = -1;
    quizController.lectureindex = -1;

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.school_rounded, color: Colors.blue),
            label: "Learn",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.search, color: Colors.blue),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person_pin, color: Colors.blue),
            label: "Profile",
          ),
        ],
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.grade,
              size: 35,
              color: Colors.yellow,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite, size: 35, color: Colors.red),
          ),
        ],
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              // Open the drawer
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              size: 45,
              color: Color.fromRGBO(255, 255, 255, 0.8),
            ),
          ),
        ),
        backgroundColor: Colors.blue,
        title: const Text(
          "LJava",
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
            color: Color.fromRGBO(255, 255, 255, 0.8),
          ),
        ),
        centerTitle: true,
      ),
      drawer: const SettingMenu(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            MaterialButton(
              elevation: 5.0,
              color: Colors.white, //backgroun Login
              padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 155),
              child: GestureDetector(
                onTap: () {
                  playSound();
                  quizController.levelindex = 0;
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return level1(
                      levelcontroller: quizController.levelindex,
                      lecturecontroller: quizController.lectureindex,
                    );
                  }));
                },
                child: Center(
                  child: const Text(
                    'Level 1',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
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
              elevation: 5.0,
              color: Colors.white, //backgroun Login
              padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 155),
              child: GestureDetector(
                onTap: () {
                  playSound();
                  quizController.levelindex = 1;
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return level2(
                      levelcontroller: quizController.levelindex,
                      lecturecontroller: quizController.lectureindex,
                    );
                  }));
                },
                child: Center(
                  child: const Text(
                    'Level 2',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
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
              elevation: 5.0,
              color: Colors.white, //backgroun Login
              padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 155),
              child: GestureDetector(
                onTap: () {
                  playSound();
                  quizController.levelindex = 2;
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return level3(
                      levelcontroller: quizController.levelindex,
                      lecturecontroller: quizController.lectureindex,
                    );
                  }));
                },
                child: Center(
                  child: const Text(
                    'Level 3',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
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

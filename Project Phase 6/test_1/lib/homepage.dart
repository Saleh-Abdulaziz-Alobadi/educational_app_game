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
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                playSound();
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return ProfileScreen();
                }));
              },
              child: const Icon(Icons.person_pin, color: Colors.indigo),
            ),
            label: "Profile",
          ),
        ],
        selectedItemColor: Colors.black, // Change the selected item color
        unselectedItemColor: Colors.black, // Change the unselected item color
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
        backgroundColor: Colors.blue.shade900,
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
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              MaterialButton(
                elevation: 5.0,
                onPressed: () {
                  playSound();
                  quizController.levelindex = 0;
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return level1(
                      levelcontroller: quizController.levelindex,
                      lecturecontroller: quizController.lectureindex,
                    );
                  }));
                },
                child: Container(
                  width: 200, // Adjust the width to make it circular
                  height: 200, // Adjust the height to make it circular
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  child: Center(
                    child: const Text(
                      'Level 1',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              MaterialButton(
                elevation: 5.0,
                onPressed: () {
                  playSound();
                  quizController.levelindex = 1;
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return level2(
                      levelcontroller: quizController.levelindex,
                      lecturecontroller: quizController.lectureindex,
                    );
                  }));
                },
                child: Container(
                  width: 200, // Adjust the width to make it circular
                  height: 200, // Adjust the height to make it circular
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: const Text(
                      'Level 2',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              MaterialButton(
                elevation: 5.0,
                onPressed: () {
                  playSound();
                  quizController.levelindex = 2;
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return level3(
                      levelcontroller: quizController.levelindex,
                      lecturecontroller: quizController.lectureindex,
                    );
                  }));
                },
                child: Container(
                  width: 200, // Adjust the width to make it circular
                  height: 200, // Adjust the height to make it circular
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  child: Center(
                    child: const Text(
                      'Level 3',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
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
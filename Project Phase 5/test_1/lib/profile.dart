import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';

class ProfileScreen extends StatelessWidget {

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 120),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            const SizedBox(height: 20),
            itemProfile('User Name', '', CupertinoIcons.person),
            const SizedBox(height: 10),
            itemProfile('Email', '', CupertinoIcons.mail),
            const SizedBox(height: 10),
            itemProfile('Phone', '+966xxxxxxxxx', CupertinoIcons.phone),
            const SizedBox(height: 40),
            MaterialButton(
              elevation: 5.0 ,
              color: Colors.blue, //backgroun Login
              padding: const EdgeInsets.symmetric(
                  vertical: 20, horizontal: 80),
              child: GestureDetector(
                onTap: (){
                  playSound();
                },
                child: const Text(
                  'Edit Profil',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),),
              shape:OutlineInputBorder(
                borderRadius: BorderRadius.circular(30), // radius of login feld
                borderSide: BorderSide.none,
              ) ,
              onPressed: () {},)
          ],
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.blue.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10
            )
          ]
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
  Future<void> playSound() async {
    final player = AudioPlayer();
    String audioPath = "audio/sound.mp3";
    await player.play(AssetSource(audioPath));
  }
}
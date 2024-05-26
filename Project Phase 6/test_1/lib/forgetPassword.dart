import 'package:test_1/login_page.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Forget Password",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
            color: Color.fromRGBO(255, 255, 255, 0.8),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
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
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 220),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              const SizedBox(height: 70), //how far email field from above
              Text(
                'Write your email and you will receive link to change your password.',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black.withOpacity(0.5),
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(

                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.white38),
                    prefixIcon: const Icon(Icons.email,color: Colors.indigo),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        // change color of backgroun Email field
                        width: 1.0,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    )),
              ),
              const SizedBox(height: 50),

              MaterialButton(
                elevation: 5.0,
                color: Colors.indigoAccent, //backgroun Login
                padding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
                child: GestureDetector(
                  onTap: () {
                    playSound();
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const LoginPage();
                    }));
                  },
                  child: const Text(
                    'Check',
                    style: TextStyle(
                      color: Colors.white70,
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

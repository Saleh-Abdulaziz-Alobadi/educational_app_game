import 'package:flutter/material.dart';
import 'package:test_1/login_page.dart';
import 'package:audioplayers/audioplayers.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign Up",
          style: TextStyle(
            fontSize: 45,
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
        padding: EdgeInsets.symmetric(horizontal: 20,vertical:100 ),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              const SizedBox(height: 66), //how far Username field from above
              TextField(
                decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: TextStyle(color: Colors.white38),
                    prefixIcon: const Icon(Icons.email,color: Colors.indigo),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        // change color of backgroun Username field
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
              const SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.white38),
                  prefixIcon: const Icon(Icons.email,color: Colors.indigo),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      // change color of backgroun Email
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
                  ),
                ),
              ),

              const SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.white38),
                  prefixIcon: const Icon(Icons.lock,color: Colors.indigo),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      // change color of backgroun Password
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
                  ),
                ),
              ),

              const SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(color: Colors.white38),
                  prefixIcon: const Icon(Icons.lock,color: Colors.indigo),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      // change color of backgroun Confirm Password
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
                  ),
                ),
              ),

              const SizedBox(height: 50),
              MaterialButton(
                  elevation: 5.0,
                  color: Colors.indigoAccent, //backgroun Sign up
                  padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  shape: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.circular(30), // radius of Sign up feld
                    borderSide: BorderSide.none,
                  ),
                  onPressed: () {
                    playSound();
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const LoginPage();
                    }));
                  }),
              const SizedBox(height: 25), //size Sign up

              GestureDetector(
                onTap: () {
                  playSound();
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const LoginPage();
                  }));
                },
                child: Text('Login',
                    style: TextStyle(
                      color: Colors.indigoAccent,
                      fontSize: 20,
                    )),
              )
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

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:test_1/forgetPassword.dart';
import 'package:test_1/signUp.dart';
import 'package:test_1/homepage.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginSignupPageState();
}

class _LoginSignupPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 90,
        ),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              const SizedBox(height: 30), //how far email field from above
              Image.asset('assets/images/logo.png',
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 40),
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
              const SizedBox(height: 50),

              MaterialButton(
                elevation: 5.0 ,
                color: Colors.indigoAccent, //backgroun Login
                padding: const EdgeInsets.symmetric(
                    vertical: 20, horizontal: 80),
                child: GestureDetector(
                  onTap: (){
                    playSound();
                    Navigator.of(context).push(MaterialPageRoute(builder:(context){
                      return  HomePage();
                    }));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),),
                shape:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30), // radius of login feld
                  borderSide: BorderSide.none,
                ) ,
                 onPressed: () {
                 },
              ),
              const SizedBox(height: 20), //size forget the password

              GestureDetector(
                onTap: (){
                  playSound();
                  Navigator.of(context).push(MaterialPageRoute(builder:(context){
                    return const ForgetPassword();
                  }));
                },
                child: Text('Forget the Password ?',
                    style: TextStyle(
                      color: Colors.indigoAccent,
                      fontSize: 20,

                    ) ),
              ),
              const SizedBox(height: 20), //size Sign up

              GestureDetector(
                onTap: (){
                  playSound();
                  Navigator.of(context).push(MaterialPageRoute(builder:(context){
                    return const SignUp();
                  }));
                },
                child: Text('Sign up',
                    style: TextStyle(
                      color: Colors.indigoAccent,
                      fontSize: 20,

                    ) ),
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

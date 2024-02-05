import 'package:flutter/material.dart';
import 'package:educational_app_game/forgetPassword.dart';
import 'package:educational_app_game/signUp.dart';
import 'package:educational_app_game/homepage.dart';

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
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 70,
        ),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              const SizedBox(height: 40), //how far email field from above
              Image.asset('assets/images/logo.png',
              width: 190,
                height: 190,
              ),
              const SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: const Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        // change color of backgroun Email field
                        width: 1.0,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 1.0,
                      ),
                    )),
              ),
              const SizedBox(height: 30),
              TextField(

                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: const Icon(Icons.lock),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      // change color of backgroun Email
                      width: 1.0,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),

            MaterialButton(
                  elevation: 5.0 ,
                  color: Colors.blue, //backgroun Login
                  padding: const EdgeInsets.symmetric(
                      vertical: 20, horizontal: 80),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder:(context){
                      return const HomePage();
                    }));
                  },
                  child: const Text(
                      'Login',
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
                  onPressed: () {},),
              const SizedBox(height: 20), //size forget the password

              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder:(context){
                    return const ForgetPassword();
                  }));
                },
                child: Text('Forget the Password ?',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,

                ) ),
              ),
              const SizedBox(height: 20), //size Sign up

              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder:(context){
                    return const SignUp();
                  }));
                },
                child: Text('Sign up',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,

                    ) ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

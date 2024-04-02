import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:test_1/login_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _initializeVideoPlayer();
  }

  void _initializeVideoPlayer() {
    _controller = VideoPlayerController.asset('assets/LJAVA.mp4')
      ..initialize().then((_) {
        setState(() {
          // Start playing the video once it's initialized
          _controller.play();
        });
        // Delay for 5 seconds (adjust the duration as needed)
        Future.delayed(Duration(seconds: 5), () {
          // Navigate to the login page
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: _controller.value.isInitialized
                ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
                : CircularProgressIndicator(),
          ),
          // Add other widgets on top of the video, if needed
        ],
      ),
    );
  }
}

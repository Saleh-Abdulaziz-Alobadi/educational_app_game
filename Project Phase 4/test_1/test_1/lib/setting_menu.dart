import 'package:flutter/material.dart';
import 'ThemeProvider.dart';
import 'package:provider/provider.dart';
import 'login_page.dart';
import 'profile.dart';

class SettingMenu extends StatefulWidget {
  final VoidCallback onDarkModeToggle;

  const SettingMenu({Key? key, required this.onDarkModeToggle})
      : super(key: key);

  @override
  _SettingMenuState createState() => _SettingMenuState();
}

class _SettingMenuState extends State<SettingMenu> {
  @override
  Widget build(BuildContext context) {
    const double topEmptySpace = 50.0;
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;

    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: topEmptySpace),
          ElevatedButton(
            onPressed: widget.onDarkModeToggle,
            style: ElevatedButton.styleFrom(
              fixedSize: Size(MediaQuery.of(context).size.width * 0.5, 50),
            ),
            child: const Text('Dark Mode'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              _showSoundControlDialog(context);
            },
            style: ElevatedButton.styleFrom(
              fixedSize: Size(MediaQuery.of(context).size.width * 0.5, 50),
            ),
            child: const Text('Control Sound'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              _showAppVersionDialog(context);
            },
            style: ElevatedButton.styleFrom(
              fixedSize: Size(MediaQuery.of(context).size.width * 0.5, 50),
            ),
            child: const Text('App Version'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              _showAboutLJAVA(context);
            },
            style: ElevatedButton.styleFrom(
              fixedSize: Size(MediaQuery.of(context).size.width * 0.5, 50),
            ),
            child: const Text('About LJAVA'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const ProfileScreen();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              fixedSize: Size(MediaQuery.of(context).size.width * 0.5, 50),
            ),
            child: const Text('Profile'),
          ),
          const SizedBox(height: 16), // Added spacing

          // Added spacing
          ElevatedButton(
            onPressed: () {
              _logout(context);
            },
            style: ElevatedButton.styleFrom(
              fixedSize: Size(MediaQuery.of(context).size.width * 0.5, 50),
            ),
            child: const Text('Logout'),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  void _showSoundControlDialog(BuildContext context) {
    int soundLevel = 50;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: const Text('Sound Control'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('(-)        <- control ->          (+) '),
                  Slider(
                    value: soundLevel.toDouble(),
                    onChanged: (double value) {
                      setState(() {
                        soundLevel = value.round();
                      });
                    },
                    min: 0,
                    max: 100,
                    divisions: 100,
                    label: '$soundLevel',
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Close'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _showAppVersionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('App Version'),
          content: Text('Version: 1.0.0'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void _showAboutLJAVA(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('About LJAVA'),
          content: Text(
            'The application is an educational game for the Java language, consisting of several levels. '
            'For each level, there is a short test. The application helps users learn the Java language more effectively '
            'while adding some fun. Enjoy the game!',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void _logout(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }
}
           

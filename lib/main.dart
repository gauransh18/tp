import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/mobileBody.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:portfolio/DesktopBody.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        backgroundColor: Colors.black,
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Center(
                    child: GradientText(
              'Hi',
              style: const TextStyle(
                fontSize: 139,
              ),
              colors: const [
                Colors.blue,
                Colors.purple,
              ],
            )).animate().fadeOut(
                  duration: const Duration(seconds: 3),
                ), // Fade out animation for the text

            

            Home(
              mobileBody: MobileBody(),
              desktopBody: DesktopBody(),
            ).animate().fadeIn(
                  delay: const Duration(seconds: 3),
                  duration: const Duration(seconds: 1),
                ),
          ],
        ),
      ),
    );
  }
}

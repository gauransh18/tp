import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});
  
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width ;
    double height = MediaQuery. of(context). size. height ;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            GradientText(
              'Hello',
              style: const TextStyle(
                fontSize: 30,
              ),
              colors: const [
                Colors.red,
                Colors.purple,
              ],
            ),
            // .animate().fadeIn(
            //       duration: const Duration(milliseconds: 3500),
            //     ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Home",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Projects",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "About",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Contact",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ).animate().fadeIn(
              duration: const Duration(milliseconds: 3500),
            ), // Fade in animation for the appbar
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/frog.png',width: width*.25, height:height*0.25),
              ),
            // Fade in animation for the image
            ],
          )),
        ),
      ),
    );
  }
}
